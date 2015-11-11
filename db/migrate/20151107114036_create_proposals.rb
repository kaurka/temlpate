class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :title
      t.integer :template_id
      t.integer :user_id
      t.integer :link

      t.timestamps null: false
    end
  end
end
