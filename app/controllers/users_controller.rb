class UsersController < ApplicationController
  doorkeeper_for :all

  def index
    unless params[:token].nil?
      @user = current_resource_owner
      @user.token = doorkeeper_token.token
    end
    @users = User.all
  end

  def show
    current_id = params[:id]


    if current_id == 'current'
      @user = current_resource_owner
      @user.token = doorkeeper_token.token
    else
      @user = User.find(params[:id])
    end

    render :json => @user

  end

end
