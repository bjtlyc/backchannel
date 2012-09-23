class Addcolumnuser1 < ActiveRecord::Migration
  def up
	  add_column :users, :name1, :text
  end

  def down
  end
end
