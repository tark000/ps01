class AddCurrencyIdToUser < ActiveRecord::Migration
  def up
    add_column :users, :currency_id, :integer
  end
end
