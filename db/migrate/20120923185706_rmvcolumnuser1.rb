class Rmvcolumnuser1 < ActiveRecord::Migration
  def up
	  remove_column :users, :name1
  end

  def down
  end
end
