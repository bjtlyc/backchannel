class PanelController < ApplicationController
  $category = { 'life'=> 'life', 'study' => 'study', 'activity' => 'activity'}
  def index
	  @posts = Post.all
	  if session[:ifsearch] == false 
		  session[:ifsearch] = true
		  @posts= $spost
	  end
	  @user = current_user 
  end

  def search
          @users = User.all
	  session[:ifsearch] = false
	  $spost=Array.new
	 if params[:search] == "post"
		 @posts = Post.all
		 @posts.each do |post|
			if /#{params[:keyword]}/.match(post.content) != nil
				$spost << post
			end
		 end
	 elsif params[:search] == "user"
		 @posts = Post.all
		 @users.each do |user|
			 if /#{params[:keyword]}/.match(user.name) != nil
		 		@posts.each do |post|
			 		if post.user_id == user.id 
				 		$spost << post
					end
				end
			 end
		 end
	 elsif params[:search] == "category"
		 @posts = Post.all
		 @posts.each do |post|
			 if post.category == $category[params[:category][:value]]
				 $spost << post
			 end
		 end
	 end

          respond_to do |format|
            format.html { redirect_to panel_index_path }
      	    format.json { head :no_content }
    end
  end

end
