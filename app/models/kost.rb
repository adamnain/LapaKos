class Kost < ApplicationRecord
	:nama_kos
	:harga_kos
	:fasilitas
	:alamat
	:keterangan_lain

	belongs_to :pengguna

	def self.search(search)
		if search
			find(:all, :condition => ['alamat LIKE ?', "%#{search}"])
		else
			render plain: "tidak ditemukan"
		end
	end
end
