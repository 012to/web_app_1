module NotificationHelper
  def update_user_notifications(user, params)
    was_enabled = user.enable_notifications
    user.update(params)
    if !was_enabled && user.enable_notifications?
      UserMailer.with(user: user).notification_enabled_email.deliver_later
    elsif was_enabled && !user.enable_notifications?
      UserMailer.with(user: user).notification_disabled_email.deliver_later
    end
    user
  end
end
