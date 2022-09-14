class AddGidToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :g_id, :string
  end
end
