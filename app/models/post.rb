class Post < ApplicationRecord
  belongs_to :user
  belongs_to :postable, polymorphic: true
  # belongs_to :profile, through: :users
  has_many :votes
  has_many :bookmarks
  has_many :comments
  has_many_attached :photos
  has_rich_text :rich_content
  validates :title, :blurb, presence: true
  CATEGORIES = ["Roles", "Skills"]
#   include PgSearch::Model

#   pg_search_scope :search_by_title_and_blurb,
#   against: [ :title, :blurb ],
#   using: {
#     tsearch: { prefix: true }
#   }
end

# for search bar:olwyn to delete if not working- all from Pg
