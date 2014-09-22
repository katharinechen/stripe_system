class DonationsController < ApplicationController

  def index
    @nonprofit = Nonprofit.find(params["nonprofit_id"])
    @donations = Donation.all
  end

  def new
    @donation = Donation.new
    @card = Card.new
    @nonprofit = Nonprofit.find(params["nonprofit_id"])
    render "new"
  end

  def create

    @card = Card.new(donation_params[:card])
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
    params.require(:donation).permit(:amount, :currency, :nonprofit_id, :user_id, card: [:user_id, :number, :exp_month, :exp_year, :cvc])
  end

end
