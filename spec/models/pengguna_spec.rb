require 'rails_helper'
RSpec.describe Kost, type: :model do
  it 'is databse authenticable' do
    pengguna = Pengguna.create(
      email: 'test@example.com',
      password: 'password123',
      password_confirmation: 'password123'
    )
    expect(pengguna.valid_password?('password123')).to be_truthy
  end
end
