class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	helper_method :require_logged_in

	def require_logged_in
		if session[:user_id].nil? 
			redirect_to login_path
		end
	end
end
