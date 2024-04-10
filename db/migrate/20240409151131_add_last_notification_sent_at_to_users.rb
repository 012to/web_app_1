class AddLastNotificationSentAtToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :last_notification_sent_at, :datetime
  end
end
