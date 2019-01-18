class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  has_many :messages
  has_many :entries
  
  has_attached_file :image, styles: { medium: "300x300>", thumb: "50x50>" }
  
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
