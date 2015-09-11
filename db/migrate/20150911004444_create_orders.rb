class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :number
      t.string :email
      t.text :contents
      t.string :location
    end
  end
end
