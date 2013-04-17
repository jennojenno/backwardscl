class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :ownermake
      t.string :ownermodel
      t.integer :owneryear
      t.integer :ownermileage
      t.text :ownerdesc
      t.string :ownercartype
      t.integer :offerprice
      t.string :image1
      t.integer :seller_id
      t.integer :estvalue

      t.timestamps
    end
  end
end
