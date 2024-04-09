=begin
namespace :send_inactive_notification do
  desc 'Send push notification to inactive users'
  task send_inactive: :environment do
    inactive_users = User.where('last_active_date < ?', 30.seconds.ago)
    inactive_users.each do |user|
      notification = CreateNotification.new
      notification.notification!
    end
  end
end
=end

namespace :send_inactive_notification do
  desc 'Send email notification to inactive users'
  task send_inactive: :environment do
    inactive_users = User.where('last_active_date < ?', 1.minute.ago)
    inactive_users.each do |user|
      UserMailer.with(user: user).inactive_notification_email.deliver_now
    end
  end
end