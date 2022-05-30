class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :post, uniqueness: { scope: :user, message: "has already been added to your bookmarks" }
end
