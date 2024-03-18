every 3.minutes do
  runner "NotificationJob.perform_later"
end