require 'rails_helper'

describe Donation do

  it { should validate_presence_of :amount }
  it { should validate_presence_of :currency }
  it { should validate_presence_of :card_id }

  it { should belong_to :card }
  it { should belong_to :nonprofit }
  it { should belong_to :user }

end
