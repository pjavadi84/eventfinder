class LandlordsController < ApplicationController
    def new
        @landlord = Landlord.new
    end

    def create 
        if (@landlord = Landlord.create(landlord_params))
            session[:landlord_id] = @landlord.id 
            redirect_to landlord_path(@landlord)
        else
            render 'new'
        end
    end

    def show
        @landlord = Landlord.find_by(id: params[:id])
    end

    private
    
        def landlord_params
            params.require(:landlord).permit(
                :id, 
                :username, 
                :password, 
                :phone_number, 
                :email_address,
                :street_address_number,
                :street_address_name,
                :address_city,
                :address_state,
                :property_sales
                )
        end
end