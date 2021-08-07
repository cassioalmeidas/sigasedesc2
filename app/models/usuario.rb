class Usuario < ApplicationRecord
  acts_as_paranoid
  has_paper_trail
  validates :first_name, :last_name, :email, :password, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable


  def to_s
    first_name.blank? && last_name.blank? ? email : "#{first_name} #{last_name}"
  end
end
