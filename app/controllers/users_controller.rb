class UsersController < ApplicationController
	def new
		@user = User.new
	end
	def create
		@user = User.new(user_params)
		if @user.save
			#send email
			UserSignUpMailer.user_sign_up(@user).deliver
			redirect_to users_path
		else
			
			render :new
		end
	end
	def index
		@users = User.all
	end
	private
	def user_params
		params.require(:users).permit(:name, :email)
	end
end
