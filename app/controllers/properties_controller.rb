class PropertiesController < ApplicationController

   def index 
      if params[:landlord_id]
         @properties = Landlord.find(params[:landlord_id]).properties
      else
         @properties = Property.all
      end
   end

   def new
      if params[:landlord_id] && !Landlord.exists?(params[:landlord_id])
         redirect_to landlords_path, alert: "Landlord not found"
      else
         @property = Property.new(landlord_id: params[:landlord_id])
      end
      # binding.pry
   end

   def create 
      @property = Property.new(property_params)
      @property.save
      redirect_to property_path(@property)
   end

   def show
      if params[:landlord_id]
         # @property = Property.find_by(landlord_id: params[:landlord_id])
         @property = Landlord.find(params[:landlord_id]).properties.find(params[:id])
      else
         @property = Property.find(params[:id])
      end
   end

   def property_params
      params.require(:property).permit(
         :landlord_id,
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
