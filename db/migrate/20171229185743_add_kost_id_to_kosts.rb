class AddKostIdToKosts < ActiveRecord::Migration[5.1]
  def change
    add_column :kosts, :kost_id, :integer
  end
end
