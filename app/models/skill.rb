class Skill < ApplicationRecord
  has_many :posts, as: :postable

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
