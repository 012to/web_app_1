# config/importmap.rb
pin "application", preload: true
pin_all_from "app/javascript/controllers", under: "controllers", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "@hotwired--stimulus.js" # @3.2.2
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin "stimulus-autocomplete" # @3.1.0
#pin "bootstrap", to: "bootstrap.min.js", preload: true
#pin "@popperjs/core", to: "popper.js", preload: true
