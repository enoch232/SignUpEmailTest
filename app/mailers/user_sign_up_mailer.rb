class UserSignUpMailer < ApplicationMailer
  def user_sign_up(user)
  	@user = user

  end
end
