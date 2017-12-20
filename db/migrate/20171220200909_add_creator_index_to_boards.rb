class AddCreatorIndexToBoards < ActiveRecord::Migration[5.1]
  def change
    add_index :boards, :creator_id
  end
end
