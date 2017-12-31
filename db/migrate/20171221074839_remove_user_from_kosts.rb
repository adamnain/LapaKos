class RemoveUserFromKosts < ActiveRecord::Migration[5.1]
  def change
  	remove_column :kosts, :user, :string

  end
end
