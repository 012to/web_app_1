class UsersController < ApplicationController
  def show
    @posts = current_user.posts.order(created_at: :desc)
    @likes_posts = current_user.likes.map(&:post)
  end
end