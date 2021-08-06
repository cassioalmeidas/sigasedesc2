require "application_responder"

class ApplicationController < ActionController::Base
  include Pagy::Backend
  before_action :authenticate_usuario!
  self.responder = ApplicationResponder
  layout :layout_by_resource
  respond_to :html

  def layout_by_resource
    devise_controller? ? 'devise' : 'application'
  end
end
