class User < ActiveRecord::Base

  validates :email, presence: true
  validates :password, presence: true

  has_many :cards
  has_many :donations
  has_many :nonprofits, through: :donations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
