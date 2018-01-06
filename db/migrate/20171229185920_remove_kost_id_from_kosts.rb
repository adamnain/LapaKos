class RemoveKostIdFromKosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :kosts, :kost_id, :integer
  end
end
