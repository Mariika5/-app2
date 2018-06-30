ActiveAdmin.register Client do

   permit_params :name, :last_name, :email, :phone

index do
   column :full_name
   column :phone
   column :email
   column :created_at
   actions
 end



end
