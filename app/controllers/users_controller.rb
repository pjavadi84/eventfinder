class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create 
        if (@user = User.create(user_params))
            session[:user_id] = @user.id 
            # binding.pry
            redirect_to user_path(@user)
        else
            render 'new'
        end
    end

    def show
        @user = User.find_by(id: params[:id])
        # binding.pry
    end

    def edit
        
    end

    private

    def user_params
        params.require(:user).permit(:id, :full_name, :username, :password, :phone_number, :email, :number_of_guests, :budget, :event_type, )
    end 
end
