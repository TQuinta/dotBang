class Skill < ApplicationRecord
  has_many :posts, as: :postable

  SKILLS = Skill.all
end
