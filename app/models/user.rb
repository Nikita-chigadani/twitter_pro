class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  

  has_many :tweeets
  has_many :friends, :through => :friendships
  has_many :followers, foreign_key: "followed_id", class_name: "Friendship"
  has_many :following, foreign_key: "follower_id", class_name: "Friendship"
  mount_uploader :avatar, AvatarUploader

  

end
