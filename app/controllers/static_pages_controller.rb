class StaticPagesController < ApplicationController
  def home
  end

  def secret
  	unless logged_in?
		flash[:success] = "Ca c'est secret ! Pense à te créer un compte pour y avoir accès 😉"
  		redirect_to new_user_path
  	end
  end
end
