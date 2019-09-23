class SessionsController < ApplicationController
    def new
        @user = session[:user_id] ? User.find(session[:user_id]) : nil
    end

    def create
        byebug
        user = User.find_by(username: session_params[:username])
        if user.authenticate(params[:password])
            #authed
            session[:user_id] = user.id
        else
            #handle failed login here
        end
    end
    def destroy
        session.delete(:user_id)
    end
    private
    def session_params
        # No mass assignment, unnecessary?
        # Form for doesn't nest - look at this later, auth token + commit 'not permitted' 
        params.permit(:username, :password, :password_confirmation)
    end
end
