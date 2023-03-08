class AdminController < ApplicationController
  def index
    @user = User.where(:role => 0)
  end
  def show
    @user = User.find_by(:id => current_user.id)
  end
end
