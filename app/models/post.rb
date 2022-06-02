class Post < ApplicationRecord
  belongs_to :user
  belongs_to :postable, polymorphic: true
  # belongs_to :profile, through: :users
  has_many :votes

  validates :title, :blurb, :content, presence: true

  CATEGORIES = ["Roles", "Skills"]
end
