class SessionsController < ApplicationController
  def new
  end

  def create
	  if user=User.authenticate(params[:name], params[:password])
		  session[:user_id] = user.id
		  if user.ifadmin == true
			  session[:ifadmin] = true
		  	redirect_to users_url(:ifadmin => true)
		  else
			  session[:ifadmin] = false 
			redirect_to panel_index_path(:ifadmin => false)
		  end
	  else
		  redirect_to login_url, :alert => "Invalid user/password combination"
	  end
  end

  def destroy
	  session[:user_id]=nil
	  redirect_to panel_path, :notice => "Logged out"
  end
end
