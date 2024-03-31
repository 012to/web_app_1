class LikesController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    current_user.likes.create!(post_id: @post.id)

    render turbo_stream: turbo_stream.replace(
      'like_button',
      partial: 'likes/like_button',
      locals: { post: @post, liked: true }
    )
  end

  def destroy
    @post = Post.find(params[:post_id])
    like = current_user.likes.find_by!(post_id: @post.id)
    like.destroy!

    render turbo_stream: turbo_stream.replace(
      'like_button',
      partial: 'likes/like_button',
      locals: { post: @post, liked: false }
    )
  end
end
