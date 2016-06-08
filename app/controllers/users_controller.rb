class UsersController < ApplicationController
	def new
		@user = User.new
	end
	def create
		@user = User.new(user_params)
		if @user.save
			render :new
		else
			#send email
			redirect_to :index
		end
	end
	def index
		@users = User.all
	end
	private
	def user_params
		params.require(:user).permit(:name, :email)
	end
end
