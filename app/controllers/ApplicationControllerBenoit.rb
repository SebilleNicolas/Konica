class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  

  def after_sign_in_path_for(resource)
    if session[:order_id]
      edit_order_path(session[:order_id])
    else
      '/account'
    end
  end



end
