
class User < ApplicationRecord
<<<<<<< HEAD
  # rolify  <-- Link user to rolify gem (read its methods below.)
=======
 
>>>>>>> 21562f911467468779d02ef4f3a83b0434708409
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # Lots of Love and go0d luck! Danny <3
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_relationships, source: :follower
       
  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow'
  has_many :following, through: :following_relationships, source: :following

  has_many :product
  has_one :address
  has_one_attached :image # <-- This little thingy allows to load images. Love you and good luck! Danny <3
  
end
