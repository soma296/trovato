class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to users_path, danger: "！！！！　不正アクセス！！！！"
    end
  end

  def update
    username = params[:user][:username]
    email = params[:user][:email]
    @user = User.find(params[:id])
    if @user.update(username: username, email: email)
      redirect_to user_path(@user), success: "ユーザー情報を更新しました。"
    else
      render :edit
    end
  end
end
