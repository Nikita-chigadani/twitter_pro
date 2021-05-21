class Tweeet < ApplicationRecord
    validates :tweet_about_it, presence: true,
                                length: {minimum: 5}
    belongs_to :user
end
