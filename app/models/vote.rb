class Vote < ActiveRecord::Base
  attr_accessible :post_id, :user_id, :user, :votenum
  belongs_to :user
end
