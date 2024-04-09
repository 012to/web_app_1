class PostsController < ApplicationController
  before_action :set_post, only: %i[ edit update destroy ]

  def index
    @posts = Post.all.order('RANDOM()')
  end

  def show
    @post = Post.includes(:user).find(params[:id])
  end

  def new
    @post = Post.new
    @tag_name = ""
  end

  def edit
    @tag_name = @post.tags.pluck(:tag_name).join("、")
  end

  def create
    @post = current_user.posts.new(post_params)
    tag_names = params[:tag_name].delete(' ').delete('　').split('、')
    tags = tag_names.map { |tag_name| Tag.find_or_initialize_by(tag_name: tag_name) }

    tags.each do |tag|
        if tag.invalid?
          @tag_name = params[:tag_name]
          @post.errors.add(:tags, tag.errors.full_messages.join("\n"))
          return render :new, status: :unprocessable_entity
        end
      end

    @post.tags = tags
    if @post.save
      redirect_to user_path(current_user), notice: "投稿を作成しました"
    else
      @tag_name = params[:tag_name]
      render :new, status: :unprocessable_entity
    end
  end

  def update
    ActiveRecord::Base.transaction do
      tag_names = params[:tag_name].split("、")
      tags = tag_names.map { |tag_name| Tag.find_or_create_by(tag_name: tag_name) }

      @post.post_tags.clear

      tags_valid = tags.all? do |tag|
        post_tag = @post.post_tags.build(tag: tag)
        tag.valid? && post_tag.valid?
      end

      if tags_valid && @post.update(post_params)
        @post.tags = tags # タグ関連付けの更新を実際に保存します。
        redirect_to user_path(current_user), notice: "投稿が更新されました"
      else
        @tag_name = params[:tag_name] # タグ名の文字列を再設定します。
        tags.each { |tag| @post.errors.add(:base, "Tag error: #{tag.errors.full_messages.join("\n")}") unless tag.valid? }
        render :edit, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @post.destroy!
    redirect_to user_path(current_user), notice: "削除しました", status: :see_other
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
