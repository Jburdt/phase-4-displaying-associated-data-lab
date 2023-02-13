class UsersController < ApplicationController

  def show 
    @users = find_user
    render json: @users, include: :items
  end
  
  private
  def find_user
    User.all.find(params[:id])
  end

end
