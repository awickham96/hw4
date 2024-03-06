class SessionsController < ApplicationController
  def new
  end

  def create 
    @user = User.find_by({"email" => params["email"]})
    if @user != nil
      if @user["password"] == params["password"]
        flash["notice"] = "Welcome."
        redirect_to "/"
     else
      flash["notice"] = "Nope."
      redirect_to "/login"
     end
    else
      flash["notice"] = "Nope."
      redirect_to "/login"
    end
    end
    
  end

  def destroy
    flash["notice"] = "Goodbye."
    redirect_to "/"
  end
end
  