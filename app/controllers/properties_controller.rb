class PropertiesController < ApplicationController
   def index 
        @properties = Property.all
   end

   def new
      @property = Property.new
   end

   def create 
      
   end
end
