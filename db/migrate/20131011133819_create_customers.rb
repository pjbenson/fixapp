class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :photo

      t.timestamps
    end
  end
end
