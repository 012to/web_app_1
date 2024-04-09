class UserMailer < ApplicationMailer
  def inactive_notification_email
    @user = params[:user]
    mail(to: @user.email, subject: "モチベの泉")
  end

  def notification_enabled_email
    @user = params[:user]
    mail(to: @user.email, subject: '通知設定が有効になりました')
  end

  def notification_disabled_email
    @user = params[:user]
    mail(to: @user.email, subject: '通知設定が無効になりました')
  end
end
