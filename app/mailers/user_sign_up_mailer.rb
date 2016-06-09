class UserSignUpMailer < ApplicationMailer
  def user_sign_up(user)
  	@user = user
  	mail to: user.email, subject: "Sign Up Confirmation" 
  end
end
