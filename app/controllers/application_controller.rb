class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :verified_user
    before_action :verified_landlord
    helper_method :current_user
    helper_method :current_landlord

    def home

    end

    private

    def verified_user
        redirect_to '/' unless user_is_authenticated 
    end

    def verified_landlord
        redirect_to '/' unless landlord_is_authenticated
    end

    def user_is_authenticated
        !!current_user
    end

    def landlord_is_authenticated
        !!current_landlord
    end

    def current_user
        User.find_by(id: session[:user_id])
    end

    def current_landlord
        Landlord.find_by(id: session[:landlord_id])
    end
end
