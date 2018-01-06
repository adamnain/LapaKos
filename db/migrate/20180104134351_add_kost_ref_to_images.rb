class AddKostRefToImages < ActiveRecord::Migration[5.1]
  def change
    add_reference :images, :kost, foreign_key: true
  end
end
