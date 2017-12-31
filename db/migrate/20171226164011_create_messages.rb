class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :pesan
      t.string :sender
      t.string :receiver

      t.timestamps
    end
  end
end
