class Profile < ApplicationRecord
  belongs_to :user
  validates :description, presence: true
  validates :credentials, presence: true
  validates :years_of_experience, presence: true
  validates :city, presence: true
  validates :current_role, presence: true
end
