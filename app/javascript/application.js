import "@hotwired/turbo-rails"
import "controllers"
import "bootstrap"
import "@popperjs/core"

import { Application } from "@hotwired/stimulus"

const application = Application.start()

application.debug = false
window.Stimulus = application

export { application }
