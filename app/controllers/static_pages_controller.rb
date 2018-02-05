class StaticPagesController < ApplicationController
  def home
  end

  def secret
  	unless logged_in?
  		redirect_to new_user_path
  	end
  end
end
