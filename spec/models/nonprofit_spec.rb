require 'rails_helper'

describe Nonprofit do 

  it { should validate_presence_of :name }

  it { should have_many :donations }
  it { should have_many :cards }
  it { should have_many :users }

end 
