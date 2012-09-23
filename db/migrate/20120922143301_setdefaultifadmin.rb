class Setdefaultifadmin < ActiveRecord::Migration
  def up
	  change_column :users, :ifadmin, :boolean, :default => false
  end

  def down
  end
end
