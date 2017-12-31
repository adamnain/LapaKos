class AddUserToMessages < ActiveRecord::Migration[5.1]
  def change
    add_reference :messages, :pengguna, foreign_key: true
  end
end
