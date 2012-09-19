class Changeuseridtype < ActiveRecord::Migration
  def up
	  change_column :posts, :userid, :integer
  end

  def down
  end
end
