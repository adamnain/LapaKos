class MessagesController < ApplicationController

  before_action :authenticate_pengguna!

  def index
    @messages = Message.where(pengguna: current_pengguna.id)
  end

  def new
    @message = Message.new
    @received = params[:received]
    @id_kos = params[:param_id_kos]
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to controller: 'kosts', action: 'outbox'
    else
      render plain: 'Pesan gagal terkirim silahkan kembali dan coba lagi'
    end
  end

  def destroy
		message = Message.find(params[:id])
		message.destroy
    redirect_to controller: 'kosts', action: 'index'

	end

  private

  def set_mes
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:pesan, :receiver, :kost_id, :pengguna_id )
  end
end
