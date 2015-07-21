class CreateOutlays < ActiveRecord::Migration
  def change
    create_table :outlays do |t|
      t.integer :user_id
      t.integer :outlay_type_id

      t.timestamps null: false
    end
  end
end
