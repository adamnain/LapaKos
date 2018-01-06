require 'rails_helper'

RSpec.describe Kost, type: :model do
  it "cek alamat" do
  	kost = Kost.create!(alamat: "cibiru")
  	expect(kost.alamat).to eq("cibiru")
  end
  it "cek nama kos" do
  	kost2 = Kost.create!(nama_kos: "munggran")
  	expect(kost2.nama_kos).to eq("munggran")
  end
  it "cek keterangan lain" do
  	kost3 = Kost.create!(keterangan_lain: "ac")
  	expect(kost3.keterangan_lain).to eq("ac")
  end
end
