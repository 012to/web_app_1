require File.expand_path(File.dirname(__FILE__) + "/environment")
# cronを実行する環境変数
set :job_template, "/bin/zsh -l -c ':job'"
job_type :rake, "export PATH=\"$HOME/.rbenv/bin:$PATH\"; eval \"$(rbenv init -)\"; cd :path && RAILS_ENV=:environment bundle exec rake :task :output"
rails_env = :production
set :environment, 'production'
set :output, "#{Rails.root}/log/cron.log"


every 5.minutes do
  rake 'send_inactive_notification:send_inactive'
end
