class AddPhotosToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :photos, :json
  end
end
