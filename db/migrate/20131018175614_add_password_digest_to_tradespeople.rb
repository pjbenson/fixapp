class AddPasswordDigestToTradespeople < ActiveRecord::Migration
  def change
    add_column :tradespeople, :password_digest, :string

  end
end
