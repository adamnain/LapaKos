class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.attachment :avatar

      t.timestamps
    end
  end
end
