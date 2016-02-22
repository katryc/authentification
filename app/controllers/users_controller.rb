class UsersController < ApplicationController
  def new
    @user = User.new #setting up a template user for the form
  end
end
