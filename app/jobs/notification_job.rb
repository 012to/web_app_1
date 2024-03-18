class NotificationJob < ApplicationJob
  queue_as :default

  def perform
    inactive_users = User.where("last_active_time < ?", 3.minutes.ago)
    inactive_users.each do |user|
      send_notification(user)
    end
  end

  private

  def send_notification(user)
    contents = { 'en' => 'You have been inactive for 3 minutes.', 'ja' => '3分間活動がありません。' }
    type = 'inactive_notification'
    create_notification(contents, type)
  end

  def create_notification(contents, type)
    response = HTTParty.post('https://onesignal.com/api/v1/notifications',
                             headers: {
                               'Authorization' => 'Basic your-rest-api-key',
                               'Content-Type' => 'application/json'
                             },
                             body: {
                               app_id: 'your-app-id',
                               url: 'http://your-app-url.com',
                               data: { type: type },
                               included_segments: ['Active Users'],
                               contents: contents
                             }.to_json)
    # Handle response as needed
  end
end