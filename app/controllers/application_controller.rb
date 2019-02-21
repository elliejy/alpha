class ApplicationController < ActionController::Base
# Prevent CSRF attacks by raising an exception
# For APIs, you may want to use :ull_session instead

protect_from_forgery with: :exception

    helper_method :current_user, :logged_in?  # this is to let rails know that these methods will be used for views

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]  # ||= if not
    end

    def logged_in?
        !!current_user
    end

    def require_user
        if !logged_in?
            flash[:danger] = "You must be logged in to perform that action"
            redirect_to root_path
        end 
    end


end
