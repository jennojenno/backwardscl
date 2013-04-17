class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.integer :user_id
      t.integer :wantedad_id

      t.timestamps
    end
  end
end
