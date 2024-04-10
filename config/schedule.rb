=begin
require File.expand_path(File.dirname(__FILE__) + "/environment")
set :job_template, "/bin/zsh -l -c ':job'"
job_type :rake, "export PATH=\"$HOME/.rbenv/bin:$PATH\"; eval \"$(rbenv init -)\"; cd :path && RAILS_ENV=:environment bundle exec rake :task :output"
rails_env = :production
set :environment, 'production'
set :output, "#{Rails.root}/log/cron.log"

every 2.minutes do
  rake 'send_inactive_notification:send_inactive'
end
=end