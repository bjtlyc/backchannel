class AddVotenumToPost < ActiveRecord::Migration
  def change
    add_column :posts, :votenum, :integerger
  end
end
