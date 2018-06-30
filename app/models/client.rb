class Client < ApplicationRecord
	 validates :name, :last_name, presence: true, length: { minimum: 2 }
     validates :email, presence: true
     validates :phone, presence: true
     validates :phone, format: { with: /\A(\+7|8)[\d]{10}\z/ }
     validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i  } 


     def full_name
     	if name && last_name 
     		"#{name} #{last_name}"
     	elsif name.nil? || name.empty?
     	    last_name
     	elsif last_name.nil? || last_name.empty?
     		name
     	else 
     		""
     	end
     end
end



# - Если name и last_name не nil и не пустая строка - то складываем name, last_name, между ними пробел
# - Если name или last_name nil или пустая строка - то берем только не пустое поле
# - Если и name и last_name пустая строка или nil - возвращаем пустую строку