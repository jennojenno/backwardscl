class AddUserIdToWantedAd < ActiveRecord::Migration
  def change
    add_column :wanted_ads, :user_id, :integer
  end
end
