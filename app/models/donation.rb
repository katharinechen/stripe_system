require "stripe"

class Donation < ActiveRecord::Base

  validates :amount, presence: true
  validates :currency, presence: true
  validates :card_id, presence: true

  belongs_to :card
  belongs_to :nonprofit
  belongs_to :user

  accepts_nested_attributes_for :card
  before_create :charge

private

  def charge

  Stripe.api_key = "sk_test_ZFzLG0BFYwyS8gFOe4HUCdED"

    Stripe::Charge.create(
      :amount => 400,
      :currency => "usd",
      :card => {
        :number => number,
        :exp_month => exp_month,
        :exp_year => exp_year,
        :cvc => cvc
      },
      :description => "Charge for test@example.com"
    )
  end
end
