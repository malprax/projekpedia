class CreatePostjobs < ActiveRecord::Migration
  def change
    create_table :postjobs do |t|
      t.string :title
      t.text :content
      t.string :client_id
      t.string :timestamp
      t.string :price

      t.timestamps null: false
    end
  end
end
