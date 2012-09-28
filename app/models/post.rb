class Post < ActiveRecord::Base
  default_scope :order => 'updated_at DESC'
  attr_accessible :content, :title, :user_id, :category
  validates :title, :content, :category,  :presence =>true
  has_many :votes, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  belongs_to :user
  def add_user(user_id)
	  current_item=votes.find_by_user_id(user_id)
	  if current_item
		  current_item.quantity +=1
	  else
		  current_item = votes.build(:user_id => user_id)
	  end
	  current_item
  end
end
