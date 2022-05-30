class Role < ApplicationRecord
  has_many :posts, as: :postable

  validates :name, presence: true
end
