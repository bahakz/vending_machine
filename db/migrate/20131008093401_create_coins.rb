class CreateCoins < ActiveRecord::Migration
  def change
    create_table :coins do |t|
      t.string :name
      t.integer :value_pound
      t.integer :value_pence
      t.integer :quantity

      t.timestamps
    end
  end
end
