class Card < ActiveRecord::Base

  validates :user_id, presence: true
  validates :number, presence: true
  validates :exp_month, presence: true
  validates :exp_year, presence: true
  validates :cvc, presence: true

  has_many :donations
  belongs_to :user
  has_many :nonprofits, through: :donations

end
