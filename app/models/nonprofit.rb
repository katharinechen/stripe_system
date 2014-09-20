class Nonprofit < ActiveRecord::Base 

  validates :name, presence: true 

  has_many :donations 
  has_many :cards, through: :donations 
  has_many :users, through: :donations 
end 