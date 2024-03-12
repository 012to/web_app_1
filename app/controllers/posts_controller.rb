class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
    @posts = Post.all.order('RANDOM()')
  end

  def show
    @post = Post.includes(:user).find(params[:id])
  end

  def create
    @post = current_user.posts.build(post_params)
    tag_list = params[:post][:tag_name].delete(' ').delete('　').split(',')
    if @post.save
      @post.save_posts(tag_list)
      redirect_to posts_path, notice: '投稿が完了しました'
    else
      flash.now[:danger] = '投稿に失敗しました'
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    @tag_list = @post.tags.pluck(:tag_name).join(',')
  end

  def update
    @post = Post.find(params[:id])
    tag_list = params[:post][:tag_name].delete(' ').delete('　').split(',')
    if @post.update(post_params)
      @post.save_posts(tag_list)
      redirect_to "/posts/#{@post.id}", notice: '投稿が更新されました'
    else
      flash.now[:danger] = '更新に失敗しました'
      render :edit
    end
  end


  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/posts'
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
