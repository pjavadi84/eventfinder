class User < ApplicationRecord
    has_many :events
    has_many :properties, through: :events
    has_secure_password

    def create 
        event = Event.create(event_params)
        redirect_to user_path(event.user)
    end
end
