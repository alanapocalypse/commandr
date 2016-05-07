class RemoveSlugFromRoom < ActiveRecord::Migration
  def change
    remove_column :rooms, :slug, :string
  end
end
