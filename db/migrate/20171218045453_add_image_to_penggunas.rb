class AddImageToPenggunas < ActiveRecord::Migration[5.1]
  def change
    add_column :penggunas, :image, :string
  end
end
