class CreateKosts < ActiveRecord::Migration[5.1]
  def change
    create_table :kosts do |t|
      t.string :nama_kos
      t.integer :harga_kos
      t.string :foto
      t.text :fasilitas
      t.text :alamat
      t.text :keterangan_lain

      t.timestamps
    end
  end
end
