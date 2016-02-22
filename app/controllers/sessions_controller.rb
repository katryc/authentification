class SessionsController < ApplicationController
  def new

  end
  def create
    @user = User.
            find_by(username: params[:username]). #if we find the user we return, if not return nil
            try(:authentificate, params[:password]) #chain to the authentif method, and apply to nil,if we dont find the user we just make it falsey
                                                   #it will return the user if everything is right
    return render action: 'new' unless @user


    #logged in,, HOORAY!!!!

    session[:user_id] = @user.id #put the current user in the session hash
                                 #Assigns the key user_id to the value of the number @user.id
    redirect_to notes_path

  end


end
