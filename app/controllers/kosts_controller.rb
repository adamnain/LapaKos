class KostsController < ApplicationController
	before_action :set_kost, only: [:show, :edit, :update, :destroy]

	layout 'dashboard', except: [:detail, :show]
	before_action :authenticate_pengguna!, except: [:detail, :show]

	def index
		@kosts = Kost.where(pengguna: current_pengguna.id)
	end

	def detail
		#@kosts = Kost.find_by_sql(["SELECT * FROM images INNER JOIN kosts ON images.kost_id=kost.id;"])
		if params[:search]
			@kosts = Kost.where("kosts.alamat LIKE concat('%', ?, '%')", params[:search])
		else
			@kosts = Kost.all
			#@kosts = Kost.find_by_sql(["SELECT * FROM images INNER JOIN kosts ON images.kost_id=kost.id;"])
		end
	end

	def show
		@kost = Kost.find(params[:id])
	end

	def inbox
		@message = Message.find_by_sql(
		["SELECT messages.id as id, messages.pengguna_id as sender, kosts.nama_kos, messages.pesan, receiver,penggunas.email, kost_id
			FROM ((messages INNER JOIN kosts ON messages.kost_id = kosts.id)
			INNER JOIN penggunas ON kosts.pengguna_id = penggunas.id) WHERE messages.receiver = ?", current_pengguna.id])
		#@message = Message.find_by_sql(["SELECT * FROM messages INNER JOIN kosts ON (messages.kost_id = kosts.id) WHERE receiver = ?", current_pengguna.id])
	end

	def outbox
		@message = Message.find_by_sql(
		["SELECT  messages.id as id, messages.pengguna_id as sender, kosts.nama_kos, messages.pesan, receiver,penggunas.email, kost_id
			FROM ((messages INNER JOIN kosts ON messages.kost_id = kosts.id)
			INNER JOIN penggunas ON kosts.pengguna_id = penggunas.id) WHERE messages.pengguna_id = ?", current_pengguna.id])
		#@message = Message.where(pengguna: current_pengguna.id)
	end

	def new
		@kost = Kost.new
	end

	def create
		@kost = Kost.new(resource_params)
		if @kost.save
			redirect_to controller: 'kosts', action: 'index'
		else
			render plain: 'gagal'
		end
	end


	def edit
		@kost = Kost.find(params[:id])
	end

	def update
		@kost = Kost.find(params[:id])
		@kost.update(resource_params)
		render plain: 'berhasil update'
	end

	def destroy
		kost = Kost.find(params[:id])
		kost.destroy
		render plain: 'berhasil di hapus'
	end


	private

	def set_kost
		@kost = Kost.find(params[:id])
	end


	def resource_params
		params.require(:kost).permit(:nama_kos, :harga_kos, :fasilitas, :alamat, :keterangan_lain, :pengguna_id, :kost_img, :kost_img2)
	end

end
