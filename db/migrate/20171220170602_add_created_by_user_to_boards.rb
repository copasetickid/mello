class AddCreatedByUserToBoards < ActiveRecord::Migration[5.1]
  def change
    add_column :boards, :creator_id, :integer
  end
end
