class AddColumnToPenggunas < ActiveRecord::Migration[5.1]
  def change
  	add_column :penggunas, :Nama, :string
  	add_column :penggunas, :NoId, :string
  	add_column :penggunas, :Alamat, :text
  	add_column :penggunas, :Jk, :string
  end
end
