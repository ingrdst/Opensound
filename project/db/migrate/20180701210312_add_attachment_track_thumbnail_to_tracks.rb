class AddAttachmentTrackThumbnailToTracks < ActiveRecord::Migration[5.2]
  def self.up
    change_table :tracks do |t|
      t.attachment :track_thumbnail
    end
  end

  def self.down
    remove_attachment :tracks, :track_thumbnail
  end
end
