class UsersController < ApplicationController
    # before_action :verified_user, only: [:new, :create]
    
    def new
        @user = User.new
    end

    def create 

    end
end
