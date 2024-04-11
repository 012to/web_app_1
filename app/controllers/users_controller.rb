class UsersController < ApplicationController
  before_action :set_user, only: %i[edit_notification_settings update_notification_settings]
  def show
    @posts = current_user.posts.order(created_at: :desc)
    @likes_posts = current_user.likes.map(&:post)
  end

  def edit_notification_settings; end

  def update_notification_settings
    was_enabled = @user.enable_notifications
    if @user.update(user_params)
      if !was_enabled && @user.enable_notifications?
        UserMailer.with(user: @user).notification_enabled_email.deliver_later
      elsif was_enabled && !@user.enable_notifications?
        UserMailer.with(user: @user).notification_disabled_email.deliver_later
      end
      redirect_to user_path(current_user), notice: '通知設定を更新しました。'
    else
      render :edit_notification_settings
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:enable_notifications)
  end
end
