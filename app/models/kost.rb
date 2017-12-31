class Kost < ApplicationRecord
	:nama_kos
	:harga_kos
	:fasilitas
	:alamat
	:keterangan_lain

	belongs_to :pengguna


end
