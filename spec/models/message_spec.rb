require 'rails_helper'

RSpec.describe Message, type: :model do
  it "cek message" do
  	message = Message.create!(pesan: "cibiru")
  	expect(message.pesan).to eq("cibiru")
  end
  it "cekreceiver" do
  	message2 = Message.create!(receiver: 1)
  	expect(message2.receiver).to eq(1)
  end
  it "cek pengguna" do
  	message3 = Message.create!(kost_id: 1)
  	expect(message3.kost_id).to eq(1)
  end
end
