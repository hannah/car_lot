class ChangeCarYearToInteger < ActiveRecord::Migration
  def up
    change_column :cars, :year, 'integer USING CAST(year AS integer)', null: false
  end

  def down
    change_column :cars, :year, :string, null: false
  end
end
