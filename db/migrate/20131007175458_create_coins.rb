class CreateCoins < ActiveRecord::Migration
  def change
    create_table :coins do |t|
      t.integer :value_pound
      t.integer :value_pence

      t.timestamps
    end
  end
end
