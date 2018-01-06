class AddFotoToPenggunas < ActiveRecord::Migration[5.1]
  def change
  	add_column :penggunas, :Foto, :string
  end
end
