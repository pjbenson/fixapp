class AddEmailToTradespeople < ActiveRecord::Migration
  def change
    add_column :tradespeople, :email, :string

  end
end
