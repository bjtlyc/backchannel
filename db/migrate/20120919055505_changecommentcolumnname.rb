class Changecommentcolumnname < ActiveRecord::Migration
  def up
	  rename_column :comments, :usr_id, :user_id
  end

  def down
  end
end
