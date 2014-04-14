class AddManufacturerId < ActiveRecord::Migration
  def up
    remove_column :cars, :make
    add_column :cars, :manufacturer_id, :integer
    add_index :cars, :manufacturer_id
  end

  def down
    remove_column :cars, :manufacturer_id
    add_column :cars, :make, :string
  end
end
