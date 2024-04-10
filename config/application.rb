require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Myapp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.i18n.default_locale = :ja
    config.active_model.i18n_customize_full_message = true

    config.autoload_paths += %W(#{config.root}/lib)

# 特にここ！！Rails5から productionでも呼び出せるように設定しないといけない
    config.enable_dependency_loading = true
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
        #wheneverのタスクはlibの中に置く
    config.autoload_paths += Dir["#{config.root}/lib/**/"] #lib配下でディレクトリ分けする場合
        #本番はeagar_load
    config.eager_load_paths += Dir["#{config.root}/lib/**/"]
    #
    config.time_zone = "Tokyo"

  end
end
