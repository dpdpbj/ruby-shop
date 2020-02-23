class CreateProductions < ActiveRecord::Migration[5.2]
  def change
    create_table :productions do |t|
      t.text :name
      t.float :price
      t.integer :amount

      t.timestamps
    end
  end
end
