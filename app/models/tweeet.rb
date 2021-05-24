class Tweeet < ApplicationRecord
     validates :tweeet, presence: true,
                                 length: {minimum: 5}
     belongs_to :user
end
