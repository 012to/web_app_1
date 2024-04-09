class AddEnableNotificationsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :enable_notifications, :boolean, default: true
  end
end
