class ApplicationController < ActionController::Base
  before_action :autenticate_user!
end
