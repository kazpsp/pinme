class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :name
      t.string :lat
      t.string :lng
      t.integer :user_id

      t.timestamps
    end
  end
end
