class CreateTradespeople < ActiveRecord::Migration
  def change
    create_table :tradespeople do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.boolean :fullyQualified
      t.integer :trade_id

      t.timestamps
    end
  end
end
