class CreateBiographies < ActiveRecord::Migration
  def change
    create_table :biographies do |t|
      t.string :user_id
      t.string :city
      t.string :address
      t.string :image
      t.string :ability
      t.string :geolocation

      t.timestamps null: false
    end
  end
end
