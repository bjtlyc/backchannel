class AdminController < ApplicationController
  def index
	  @total_post = Post.count
  end
end
