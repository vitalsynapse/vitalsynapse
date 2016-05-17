class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # before_filter :authenticate_admin!
  # protect_from_forgery with: :exception
  #
  # before_action :configure_permitted_parameters, if: :devise_controller?
  def after_sign_in_path_for(resource_or_scope)
    if admin_signed_in?
      rails_admin_path
    elsif user_signed_in?
      dashboard_path(@user)
    else
      redirect_to root_path
    end
  end

  def user_or_admin
    if !(@user == current_user || current_admin)
      puts "ACCESS DENIED - WRONG USER"
      render file: "#{Rails.root}/public/403.html", layout: false, status: 403 and return
      # # render error status page or just redirect to root?...
      # flash[:notice] = "Access Denied"
      # redirect_to root_path and return
    end
  end

protected
	def configure_permitted_parameters
  		devise_parameter_sanitizer.for(:sign_up) << :first_name
  		devise_parameter_sanitizer.for(:account_update) << :first_name
	end

end
