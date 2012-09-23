class AddIfadminToUser < ActiveRecord::Migration
  def change
    add_column :users, :ifadmin, :boolean
  end
end
