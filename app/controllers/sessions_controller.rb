class SessionsController < ApplicationController
    skip_before_action :verified, only: [:new, :create]

    def new
        @user = User.new
        @landlord = Landlord.new
    end

    def create 
        user = User.find_by(username: params[:user][:username])
        landlord = Landlord.find_by(username: params[:landlord][:username])

        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id 
            redirect_to user_path(user)
        else
            flash[:message] = "Invalid information provided for user, please try again. "
            redirect_to "/login"
        end

        if landlord && landlord.authenticate(params[:landlord][:password])
            session[:landlord_id] = landlord.id 
            redirect_to landlord_path(landlord)
        else
            flash[:message] = "Invalid information provide for landlord, please try again."
            redirect_to "/login"
        end
    end

    def destroy
        session.delete("user_id")
        session.delete("landlord_id")
        redirect_to root_path
    end
end
