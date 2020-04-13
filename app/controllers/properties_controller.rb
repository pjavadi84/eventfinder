class PropertiesController < ApplicationController
   def index 
      @properties = Property.all
   end

   def new
      @property = Property.new
   end

   def create 
      @property = Property.new(property_params)
        if @property.save 
            redirect_to landlord_property_path(@landlord, @property)
        else
            render :new
        end
   #    if (@property = Property.create(property_params))
   #       session[:property_id] = @property.id 
   #       # binding.pry
   #       redirect_to property_path(@property)
   #   else
   #       render 'new'
   #   end
   end

   def show
      @property = Property.find_by(id: params[:id])
   end

   def property_params
      params.require(:property).permit(
         :id,
         :property_name,
         :manager_name,
         :phone_number,
         :street_address_name,
         :street_address_number,
         :address_city,
         :address_state,
         :event_type,
         :maximum_occupancy,
         :profit_expectation
      )
   end
end
