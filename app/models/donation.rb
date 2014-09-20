class Donation < ActiveRecord::Base 

  validates :amount, presence: true 
  validates :currency, presence: true 
  validates :card_id, presence: true 

  belongs_to :card 
  belongs_to :nonprofit 
  has_one :user, through: :card 

  before_create :charge 

private 

  def charge 
    Stripe.api_key = "sk_test_BQokikJOvBiI2HlWgH4olfQ2"

    Stripe::Charge.create(
      :amount => 400,
      :currency => "usd",
      :card => {
        :number => "4242424242424242",
        :exp_month => 9,
        :exp_year => 2015,
        :cvc => "314"
      },
      :description => "Charge for test@example.com"
    )
  end 
end 