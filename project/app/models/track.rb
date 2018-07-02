class Track < ApplicationRecord
  belongs_to :sound

  def self.search(search)
    where("name LIKE ? OR artist LIKE ? OR genre LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
  end

  has_attached_file :track_thumbnail, :styles => { :medium => "220x220#" }
  validates_attachment_content_type :track_thumbnail, :content_type => /\Aimage\/.*\Z/

  has_attached_file :audio
  validates_attachment :audio, :content_type => { :content_type => ["audio/mpeg", "audio/mp3"] }, :file_name => { :matches => [/mp3\Z/] }
end
