require 'rails_helper'

describe Card do

  it { should validate_presence_of :user_id }
  it { should validate_presence_of :number }
  it { should validate_presence_of :exp_month }
  it { should validate_presence_of :exp_year }
  it { should validate_presence_of :cvc }

  it { should have_many :donations }
  it { should belong_to :user }
  it { should have_many :nonprofits }

end
