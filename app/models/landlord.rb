class Landlord < ApplicationRecord
    has_many :properties
    has_many :events, through: :properties
    has_secure_password
end
