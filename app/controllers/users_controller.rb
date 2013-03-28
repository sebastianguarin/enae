class UsersController < ApplicationController
  def new
  end

  def logout
    sign_out
    redirect_to root_path
  end
end
