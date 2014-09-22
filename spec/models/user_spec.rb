require 'rails_helper'

describe User do
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }

  it { should have_many :cards }
  it { should have_many :donations }
  it { should have_many :nonprofits }
end
