class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :user_id
      t.integer :outlay_type_id
      t.string :description
      t.float :count

      t.timestamps null: false
    end
  end
end
