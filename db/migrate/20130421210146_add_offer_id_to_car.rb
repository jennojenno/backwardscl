class AddOfferIdToCar < ActiveRecord::Migration
  def change
    add_column :cars, :offer_id, :integer
  end
end
