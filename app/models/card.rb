class Card < ActiveRecord::Base

  validates :user_id, presence: true
  validates :number, presence: true
  validates :exp_month, presence: true
  validates :exp_year, presence: true
  validates :cvc, presence: true

  has_many :donations
  belongs_to :user
  has_many :nonprofits, through: :donations

  before_create :create_card_token

  private

  def create_card_token

    Stripe.api_key = "sk_test_ZFzLG0BFYwyS8gFOe4HUCdED"

    token = Stripe::Token.create(
      :card => {
        :number => "4242424242424242",
        :exp_month => 9,
        :exp_year => 2015,
        :cvc => "314"
      },
    )
  end

end
