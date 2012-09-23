class Comment < ActiveRecord::Base
	default_scope :order => 'updated_at DESC'
  attr_accessible :post_id, :user_id, :votenum, :content, :post
  belongs_to :user
  belongs_to :post
  has_one :user
  has_many :votes
end
