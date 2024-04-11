class RouletteController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @post = if current_user
              Post.includes(:user).where.not(user_id: current_user.id).order("RANDOM()").first
            else
              Post.includes(:user).order("RANDOM()").first
            end
  end
end
