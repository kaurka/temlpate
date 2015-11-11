class CreateProposalPositions < ActiveRecord::Migration
  def change
    create_table :proposal_positions do |t|
      t.integer :proposal_id
      t.integer :price_item_id
      t.integer :template_position_id
      t.integer :price
      t.integer :change_marker

      t.timestamps null: false
    end
  end
end
