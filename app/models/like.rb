class Like < ApplicationRecord
  belongs_to :user
  belongs_to :tweeet
  validates :user_id, uniqueness: {scope: :tweeet_id}
end
