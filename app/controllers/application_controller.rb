class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email,:password,:nickname,:shop_name,:financial_name,:branch_name,:selectkouza_id,:account_number,:kouza_name,:first_name,:last_name,:first_name,:first_name_kana,:last_name_kana,:postal_code,:city,:addresses,:address_prefecture_id,:buildings,:shop_phone])
  end
end
