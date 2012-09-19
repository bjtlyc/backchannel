class RemoveVotenumToVote < ActiveRecord::Migration
  def up
    remove_column :votes, :votenum
  end

  def down
    add_column :votes, :votenum, :integer
  end
end
