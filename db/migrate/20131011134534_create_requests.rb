class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.date :date
      t.integer :trade_id
      t.text :desription
      t.string :location
      t.date :startDate
      t.integer :tradesperson_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
