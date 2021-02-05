class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller? #deviseにまつわる画面に行った時に処理するように設定

  def after_sign_up_path_for(resource)
    events_path
  end
  def after_sign_in_path_for(resource)
    events_path
  end
  def after_sign_out_path_for(resource)
    root_path
  end

protected
  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name_sei, :name_mei, :yomi_sei, :yomi_mei, :nickname, :email ])
  end
end
