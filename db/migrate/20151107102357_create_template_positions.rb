class CreateTemplatePositions < ActiveRecord::Migration
  def change
    create_table :template_positions do |t|
      t.string :title
      t.integer :template_id
      t.integer :price_item_id
      t.integer :template_item_id
      t.integer :order

      t.timestamps null: false
    end
  end
end
