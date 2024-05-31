// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"


import { Application } from "@hotwired/stimulus"

const application = Application.start()

// import DisableButtonController from "./controllers/disable_button_controller.js"
// Stimulus.register("disable-button", DisableButtonController)

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
