class AdminController < ApplicationController
  def index
    @user = User.all
  end
end
