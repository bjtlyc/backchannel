class AddVotenumToVote < ActiveRecord::Migration
  def change
    add_column :votes, :votenum, :integer, :default => 0
  end
end
