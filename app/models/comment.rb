class Comment < ActiveRecord::Base
  attr_accessible :post_id, :user_id, :votenum, :content, :post
  belongs_to :user
  belongs_to :post
end
