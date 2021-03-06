require "application_responder"

class ApplicationController < ActionController::Base
  include Pagy::Backend
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_paper_trail_whodunnit
  before_action :authenticate_usuario!
  self.responder = ApplicationResponder
  layout :layout_by_resource
  respond_to :html


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end

  def layout_by_resource
    devise_controller? ? 'devise' : 'application'
  end

  def user_for_paper_trail
    current_usuario&.email || "Usuário desconhecido"
  end
end
