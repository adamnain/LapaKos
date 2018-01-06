class AddToDeviseTglLahir < ActiveRecord::Migration[5.1]
  def change
  	add_column :penggunas, :tgl_lahir, :datetime
  end
end
