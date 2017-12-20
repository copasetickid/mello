class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.references :board
      t.string :title
      t.boolean :open, default: true, null: false
      t.integer :position
      t.timestamps
    end
  end
end
