class User < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :password, :confirmation => true
  attr_accessible :title, :body, :password_confirmation, :password, :name
  has_many :posts, :dependent => :destroy
  has_many :votes
  has_many :comments
  validate :password_must_be_present
  private
  def password_must_be_present
	  errors.add(:password, "missing password") unless password.present?
  end

  def User.authenticate(name,password)
	  if user = find_by_name(name)
		  if user = find_by_password(password)
			  user
		  end
	  end
  end

end
