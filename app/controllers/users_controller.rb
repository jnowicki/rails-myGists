class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]

def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  if @user.save
    redirect_to root_url, :notice => "Signed up!"
  else
    render "new"
  end
end
	private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
        @user = User.find(current_user.id)
    end

     def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end

end
