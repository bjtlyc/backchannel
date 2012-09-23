class Setdefault < ActiveRecord::Migration
  def up
	  change_column :posts, :votenum, :integer, :default => 0
	  change_column :comments, :votenum, :integer, :default => 0
  end

  def down
  end
end
