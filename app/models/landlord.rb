class Landlord < ApplicationRecord
    has_many :properties
    has_secure_password
end
