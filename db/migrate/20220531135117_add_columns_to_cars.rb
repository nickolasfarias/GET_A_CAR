class AddColumnsToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :fuel, :string
    add_column :cars, :consumption, :string
    add_column :cars, :seats, :integer
    add_column :cars, :doors, :integer
    add_column :cars, :description, :text
    add_column :cars, :address, :string
  end
end
