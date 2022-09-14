class CreateCoffees < ActiveRecord::Migration[6.1]
  def change
    create_table :coffees do |t|
      t.string :drink_name
      t.string :description
      t.integer :store_id
      t.timestamps
    end
  end
end
