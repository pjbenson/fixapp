class AddPictureToTradespeople < ActiveRecord::Migration
  def change
    add_column :tradespeople, :photo, :string

  end
end
