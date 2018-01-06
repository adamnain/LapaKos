class AddAttachmentKostImgToKosts < ActiveRecord::Migration[4.2]
  def self.up
    change_table :kosts do |t|
      t.attachment :kost_img
    end
  end

  def self.down
    remove_attachment :kosts, :kost_img
  end
end
