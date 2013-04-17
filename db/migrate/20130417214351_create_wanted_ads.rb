class CreateWantedAds < ActiveRecord::Migration
  def change
    create_table :wanted_ads do |t|
      t.string :car_type
      t.string :car_make
      t.string :car_model
      t.integer :mileage_from
      t.integer :mileage_to
      t.integer :budget_from
      t.integer :budget_to
      t.text :description
      t.integer :desired_mpg
      t.string :color
      t.integer :year_from
      t.integer :year_to

      t.timestamps
    end
  end
end
