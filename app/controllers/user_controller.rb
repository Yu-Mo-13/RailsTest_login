class UserController < ApplicationController
  def login_form
  end

  def login
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      flash[:notice] = "ログインしました"
      redirect_to("/posts/index")
    else
      @error_message = "ユーザー情報が間違っています"
      @email = params[:email]
      @password = params[:password]
      
      render("users/login_form")
    end
  end
end
