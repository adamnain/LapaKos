class AddUserToKost < ActiveRecord::Migration[5.1]
  def change
  	add_column :kosts, :user, :string
  end
end
