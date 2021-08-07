class Usuario < ApplicationRecord
  acts_as_paranoid
  has_paper_trail
  validates :first_name, :last_name, :email, :password, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
