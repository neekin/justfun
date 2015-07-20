class AdminController < ApplicationController
    layout "admin"

    private
    def login_required
        @current_user ||= User.find_by_auth_token(cookies[:auth_token]) if cookies[:auth_token]
       if !@current_user
           redirect_to :root
       end
    end
end
