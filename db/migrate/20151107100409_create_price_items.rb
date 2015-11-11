class CreatePriceItems < ActiveRecord::Migration
  def change
    create_table :price_items do |t|
      t.string :title
      t.integer :price

      t.timestamps null: false
    end
  end
end
