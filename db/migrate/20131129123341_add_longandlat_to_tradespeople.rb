class AddLongandlatToTradespeople < ActiveRecord::Migration
  def change
    add_column :tradespeople, :latitude, :float

    add_column :tradespeople, :longitude, :float

  end
end
