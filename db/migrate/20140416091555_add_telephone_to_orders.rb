class AddTelephoneToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :telephone, :string
  end
end
