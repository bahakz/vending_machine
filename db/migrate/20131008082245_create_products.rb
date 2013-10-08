class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price_pound
      t.integer :price_pence
      t.integer :quantity

      t.timestamps
    end
  end
end
