class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :profile
  has_many :votes
  has_many :comments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy # this behaviour needs to be here bc we want to be sure that if we want to remove the user all posts can be removed, but we can put a behaviour that the record becomes anonymous
  has_many :bookmarks

  # validates :first_name, :last_name, :username, presence: true
  validates :username, uniqueness: { case_sensitive: false }

  def bookmark_for(post)
    bookmarks.find_by(post: post)
  end
end
