class CreateCardAssignees < ActiveRecord::Migration[5.1]
  def change
    create_table :card_assignees do |t|
      t.references :user
      t.references :card
      t.timestamps
    end
  end
end
