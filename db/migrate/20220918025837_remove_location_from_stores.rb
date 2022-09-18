class RemoveLocationFromStores < ActiveRecord::Migration[6.1]
  def change
    remove_column :stores, :location, :string
  end
end
