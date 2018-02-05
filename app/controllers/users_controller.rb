class UsersController < ApplicationController

  def new
  	@user = User.new
  end

  def create
		@user = User.new(user_params)
		if @user.save
		log_in @user
		redirect_to @user
		else
		  render 'new'
		end
  end

  def show
  	unless logged_in? 
  		redirect_to new_user_path
  	else
  	@user = User.find(params[:id])
    end
  end

  def edit
  	@user = User.find(params[:id])
  end

  def index
  	@users = User.all
  end

  def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to users_path
		else
			render 'edit'
		end

  end

  def destroy
	@user = User.find(params[:id])
	@user.destroy
	redirect_to users_path
  end

  private 

  def user_params
 	   params.require(:user).permit(:email, :password)

  end

end