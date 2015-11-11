class CreateJoinTablePriceItemTempletePosition < ActiveRecord::Migration
  def change
    create_join_table :price_items, :template_positions do |t|
       t.index [:template_position_id]
       t.index [:price_item_id]
    end
  end
end
