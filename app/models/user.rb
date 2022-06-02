class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :profile
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy #this behaviour needs to be here  bc we want to be sure that if we want to remove the user all posts can be removed, but we can put a behaviour that the record becomes anonymous

  validates :first_name, :last_name, :username, presence: true
  validates :username, uniqueness: { case_sensitive: false }
end
