
class HomeController < ApplicationController

  def index
  	unless current_person
  		redirect_to '/auth/relay'
		else	
  		redirect_to person_path(current_person)
  	end
  end
end
