class Client < ApplicationRecord
	 validates :name, :last_name, presence: true, length: { minimum: 2 }
     validates :email, presence: true
     validates :phone, presence: true
     validates :phone, format: { with: /\A(\+7|8)[\d]{10}\z/ }
     validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i  } 
end

