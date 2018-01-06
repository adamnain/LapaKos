class Kost < ApplicationRecord
	validates :nama_kos, presence: true
	validates :harga_kos, presence: true, numericality: true
	validates :fasilitas, presence: true
	validates :alamat, presence: true
	validates :keterangan_lain, presence: true

	def self.search(search)
		if search
			find(:all, :condition => ['alamat LIKE ?', "%#{search}"])
		else
			find(:all)
		end
	end
end
