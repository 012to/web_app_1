class RouletteController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    if current_user
      @post = Post.includes(:user).where.not(user_id: current_user.id).order("RANDOM()").first
    else
      @post = Post.includes(:user).order("RANDOM()").first
    end
  end
end
