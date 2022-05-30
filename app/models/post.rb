class Post < ApplicationRecord
  belongs_to :user
  belongs_to :postable, polymorphic: true

  validates :title, :blurb, :content, presence: true
end
