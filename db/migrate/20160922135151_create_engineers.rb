class CreateEngineers < ActiveRecord::Migration
  def change
    create_table :engineers do |t|
      t.string :name
      t.string :functionality
      t.string :last_graduate
      t.string :skill

      t.timestamps null: false
    end
  end
end
