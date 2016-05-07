class AddRandoToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :rando, :string
  end
end
