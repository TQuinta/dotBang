class Role < ApplicationRecord
  has_many :posts, as: :postable
end
