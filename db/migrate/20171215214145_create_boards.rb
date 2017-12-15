class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.string  :name
      t.text   :description
      t.boolean :open, default: true, null: false, index: true 
      t.timestamps
    end
  end
end
