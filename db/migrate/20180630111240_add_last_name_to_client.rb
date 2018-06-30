class AddLastNameToClient < ActiveRecord::Migration[5.1]
  def change
  	add_column :clients, :last_name, :string
  end
end
