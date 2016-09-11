class CreateApplyjobs < ActiveRecord::Migration
  def change
    create_table :applyjobs do |t|
      t.string :freelance_id
      t.float :price
      t.string :estimate
      t.text :applyletter
      t.float :fee

      t.timestamps null: false
    end
  end
end
