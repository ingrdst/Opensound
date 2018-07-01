class Sound < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :tracks

  has_attached_file :thumbnail, :styles => { :medium => "200x200#" }
  validates_attachment_content_type :thumbnail, :content_type => /\Aimage\/.*\Z/
end
