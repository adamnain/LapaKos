class AddUserRefToKosts < ActiveRecord::Migration[5.1]
  def change
  	add_reference :kosts, :pengguna, foreign_key: true;
  end
end
