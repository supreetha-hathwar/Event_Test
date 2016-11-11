class UsersController < ApplicationController
	def start_page
	end

	def new
  		@user = User.new
	end

	def create
		@user = User.new(user_params)
  		if @user.save
    		redirect_to login_new_path, :notice => "Signed up!"
  		else
    		render "new"
  		end
	end

	private

  	def user_params
   	 params.require(:user).permit(:firstname,:lastname,:username,:email,:phonenumber, :password,:password_confirmation)
  	end
end
