class CreateTemlpates < ActiveRecord::Migration
  def change
    create_table :temlpates do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
