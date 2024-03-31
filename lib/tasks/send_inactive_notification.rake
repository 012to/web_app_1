namespace :send_inactive_notification do
  desc 'Send push notification to inactive users'
  task send_inactive: :environment do
    inactive_users = User.where('last_active_date < ?', 20.days.ago)
    inactive_users.each do |user|
      notification = CreateNotification.new
      notification.notification!
    end
  end
end
