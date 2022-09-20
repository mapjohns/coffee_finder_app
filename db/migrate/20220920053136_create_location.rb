class CreateLocation < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string  :street
      t.string :city
      t.string :state
      t.integer :zip_code
      t.integer :store_id
      t.timestamps
    end
  end
end
