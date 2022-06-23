class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    def current_user
        @current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
    end
    
end
