class RemoveImageInDevise < ActiveRecord::Migration[5.1]
  def change
  	  	remove_column :penggunas, :image, :string
  end
end
