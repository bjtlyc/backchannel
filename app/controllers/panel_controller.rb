class PanelController < ApplicationController
  def index
	  @posts = Post.all
  end
end
