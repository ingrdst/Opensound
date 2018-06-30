class Track < ApplicationRecord
  belongs_to :sound

  def self.search(search)
    where("name LIKE ? OR artist LIKE ? OR genre LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
  end

  #has_attached_file :mp3
  #validates_attachment :mp3, :content_type => { :content_type => ["audio/mpeg", "audio/mp3"] }, :file_name => { :matches => [/mp3\Z/] }
end
