class FixDonationObject < ActiveRecord::Migration
  def change

    add_column :donations, :nonprofit_id, :integer  
  end
end
