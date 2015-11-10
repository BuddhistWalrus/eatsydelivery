class AddSubToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :sub, :string
    add_column :orders, :addition, :string
  end
end
