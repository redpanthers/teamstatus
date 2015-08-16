class EmployeesController < ApplicationController
  def new
    @user = User.new
  end

  def create
    generated_password = Devise.friendly_token.first(8)
    @user = User.create(user_params.merge!({password: generated_password}))
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:email)
  end
end
