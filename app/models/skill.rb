class Skill < ApplicationRecord
  has_many :posts, as: :postable
end
