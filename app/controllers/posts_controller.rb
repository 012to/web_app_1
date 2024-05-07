class PostsController < ApplicationController
  before_action :set_post, only: %i[edit update destroy]

  def index
    @q = Post.ransack(params[:q])

    @top_tags = Tag.joins(:posts)
                   .select('tags.*, COUNT(posts.id) as posts_count')
                   .group('tags.id')
                   .order('posts_count DESC')
                   .limit(5)

    @recommended_posts = current_user ? Post.recommended_for(current_user) : Post.most_used

    if params[:q].blank?
      @posts = Post.includes(:tags).order('RANDOM()')
    else
      key_words = params[:q][:title_or_tags_tag_name_cont].split(/[\p{blank}\s]+/)
      grouping_hash = key_words.reduce({}) do |hash, word|
        hash.merge(word => { title_or_tags_tag_name_cont: word })
      end
      @posts = Post.includes(:tags).ransack({ combinator: 'or', groupings: grouping_hash }).result.distinct
    end
  end

  def search
    keyword = params[:q]
    @posts = Post.joins(:tags).where("posts.title LIKE :keyword OR tags.tag_name LIKE :keyword", keyword: "%#{keyword}%").distinct
    respond_to do |format|
      format.js
    end
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
    @post = current_user.posts.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: 'この操作は許可されていません。'
  end

  def post_params
    params.require(:post).permit(:title, :content, :post_image, :post_image_cache)
  end
end