class AddKostIdToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :kost_id, :integer
  end
end
