
class HomeController < ApplicationController
  def index
  	
  	if current_person.nil?
  		redirect_to '/auth/relay'
  	else
  		redirect_to person_path(current_person)
  	end

  end
end
