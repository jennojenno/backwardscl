class AddWantedAdIdToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :wanted_ad_id, :integer
  end
end
