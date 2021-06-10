class Tweeet < ApplicationRecord
     validates :tweeet, presence: true,
                                 length: {minimum: 5}
     belongs_to :user
     has_many :likes
     has_one_attached :image
     def liked?(user)
          !self.likes.find{|like| like.user_id == user.id}
     end
end
