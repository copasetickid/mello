class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string   :title
      t.text     :description
      t.datetime :due_date
      t.boolean  :open, default: true, null: false
      t.integer  :position
      t.references :list
      t.timestamps
    end
  end
end
