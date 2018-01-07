class AddAttachmentAvatarToPenggunas < ActiveRecord::Migration[4.2]
  def self.up
    change_table :penggunas do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :penggunas, :avatar
  end
end
