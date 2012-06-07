class AccountsController < ApplicationController

	def callback
		@person = Person.find_or_create_person_from_auth(auth_hash)
		session[:person_id] = @person.id

		redirect_to :root
	end

	def destroy
		session[:person_id] = nil
		redirect_to 'http://signin.relaysso.org/cas/logout'
	end

	def failure
		flash[:notice] = 'Application failed to signin. Please contact @westonplatter on Twitter'
    redirect_to :root
	end

	protected
	
	def auth_hash
		request.env['omniauth.auth']
	end

end