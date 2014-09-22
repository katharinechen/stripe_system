class DonationController < ApplicationController

  def index
    @donation = Donation.all
  end

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)

    if @donation.save
      flash[:notice] = "You have successfully made your donation. Thank you."
      redirect_to root_url
    else
      flash[:notice] = "Something went wrong. Donation failed."
      render "new"
    end
  end

private

  def donation_params
    params.require(:donation).permit(:amount, :currency, :card_id, :nonprofit_id, :user_id)
  end

end
