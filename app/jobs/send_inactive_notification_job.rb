# app/jobs/send_inactive_notification_job.rb
class SendInactiveNotificationJob < ApplicationJob
  queue_as :default

  def perform
    inactive_users = User.where('last_active_date < ? AND enable_notifications = ?', 1.minute.ago, true)
    inactive_users.each do |user|
      UserMailer.with(user: user).inactive_notification_email.deliver_now
    end
  end
end
