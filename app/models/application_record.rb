class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # validates :email, uniqueness: true
  # validates :username, uniqueness: true
  # validates :full_name, :username, :email, :email_address, :password, presence: true

  
end
