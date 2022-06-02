class Post < ApplicationRecord
  belongs_to :user
  belongs_to :postable, polymorphic: true
  has_many :votes

  validates :title, :blurb, :content, presence: true

  CATEGORIES = ["Roles", "Skills"]
end
