class Client < ApplicationRecord
	 validates :name, :last_name, presence: true, length: { minimum: 2 }
     validates :email, presence: true
     validates :phone, presence: true
     validates :phone, format: { with: /\A(\+7|8)[\d]{10}\z/ }
     validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i  } 


     def full_name
     	if name.present? && last_name.present? 
     		"#{name} #{last_name}"
     	elsif name.present?
     	     name
     	elsif last_name.present?
     		 last_name
     	else 
     		""
     	end
     end
end



# - Если name и last_name не nil и не пустая строка - то складываем name, last_name, между ними пробел
# - Если name или last_name nil или пустая строка - то берем только не пустое поле
# - Если и name и last_name пустая строка или nil - возвращаем пустую строку

#  если name и last_name будут "" то выполнится первое условие
# и метод вернет " ", а должен ""