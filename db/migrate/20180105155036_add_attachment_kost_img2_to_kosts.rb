class AddAttachmentKostImg2ToKosts < ActiveRecord::Migration[4.2]
  def self.up
    change_table :kosts do |t|
      t.attachment :kost_img2
    end
  end

  def self.down
    remove_attachment :kosts, :kost_img2
  end
end
