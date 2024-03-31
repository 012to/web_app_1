class UsersController < ApplicationController
  def show
    @posts = current_user.posts
    @likes_posts = current_user.likes.map(&:post)
  end
end