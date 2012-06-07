class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate

  def authenticate
    unless current_person
      redirect_to :root
      return false
    end
  end

  def current_person
    # TODO merge the two return statements into 1
		return nil unless session[:person_id]
    return nil if session[:person_id] == ""
		@person ||= Person.find(session[:person_id])
	end
  helper_method :current_person

  # 
  # yet to be implemented
  # 
  
  # def current_admin
  # 	return nil unless session[:admin_in]
  # 	@admin ||= Admin.find(session[:admin_in])
  # return


  # def signed_in_admin?
  # 	unless current admin_in
  #     true
  # 		# redirect_to :controller => :home, :action => :index and return
  # 	end
  # end


end