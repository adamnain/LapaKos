class Kost < ApplicationRecord

	belongs_to :pengguna, optional:true
	has_many :image

	has_attached_file :kost_img, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :kost_img, :content_type => /\Aimage\/.*\Z/

	has_attached_file :kost_img2, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :kost_img2, :content_type => /\Aimage\/.*\Z/

	has_attached_file :kost_img3, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :kost_img3, :content_type => /\Aimage\/.*\Z/
end
