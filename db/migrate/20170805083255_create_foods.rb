class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :food
      t.integer :calories
      t.timestamps null: false
    end
  end
end
