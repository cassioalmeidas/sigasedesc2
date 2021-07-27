require "application_responder"

class ApplicationController < ActionController::Base
  before_action :authenticate_usuario!
  self.responder = ApplicationResponder
  respond_to :html
end
