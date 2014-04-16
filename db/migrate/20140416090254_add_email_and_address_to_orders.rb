class AddEmailAndAddressToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :address, :string
    add_column :orders, :email, :string
  end
end
