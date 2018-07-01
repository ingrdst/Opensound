class AddAttachmentThumbnailToSounds < ActiveRecord::Migration[5.2]
  def self.up
    change_table :sounds do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :sounds, :thumbnail
  end
end
