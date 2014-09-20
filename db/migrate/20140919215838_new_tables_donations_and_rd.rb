class NewTablesDonationsAndRd < ActiveRecord::Migration
  def change
      create_table :card do |t| 
      t.belongs_to :user 
      t.string :number
      t.integer :exp_month
      t.integer :exp_year
      t.integer :cvc
    end 

    create_table :donations do |t| 
      t.integer :amount
      t.string :currency
      t.belongs_to :card 
    end 
  end
end
