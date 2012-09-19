class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :usr_id
      t.integer :post_id
      t.integer :votenum

      t.timestamps
    end
  end
end
