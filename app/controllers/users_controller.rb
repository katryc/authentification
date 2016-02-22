class UsersController < ApplicationController
  def new
    @user = User.new #setting up a template user for the form
  end
  def created
    @user = User.new(user_params)
     return render action: 'new' unless @user.save
      redirect_to root path, notice: 'created a new user'
end

private
def user_params
  prams.
    require(:user).permit(:username, :password, :password_confirmation)
  end
end
