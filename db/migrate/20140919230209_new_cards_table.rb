class NewCardsTable < ActiveRecord::Migration
  def change
    
    drop_table :card

    create_table :cards do |t| 
      t.belongs_to :user 
      t.string :number
      t.integer :exp_month
      t.integer :exp_year
      t.integer :cvc
    end 

  end
end
