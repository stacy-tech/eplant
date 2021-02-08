class CreateUserPlants < ActiveRecord::Migration[5.2]
  def change
    create_table :user_plants do |t|
      t.integer :user_id
      t.integer :plant_id
      t.timestamps null: false
    end
  end
end
