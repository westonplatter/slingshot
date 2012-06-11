
class VpnController < ApplicationController

	before_filter :authenticate

	# standard Rails CRUD based controller

	def index
		redirect_to person_path(session[:person_id])
	end	

	def show
		redirect_to person_path(@person)
	end 

	def new
		@vpn = Vpn.new
	end

	def create
	end

	def edit
		@person ||= get_person
		@vpn = @person.vpn
	end

	def update
		@person ||= get_person
		@vpn = @person.vpn


		respond_to do |format|
			if @vpn.update_attributes(params[:vpn])
				format.html { redirect_to [@person, @vpn], notice: 'VPN password was successsfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: "edit" }
				format.json { render json: @vpn.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@person ||= get_person
		@vpn = @person.vpn
		@vpn.destroy
		redirect_to person_path(@person)
	end

	
	private

	def get_person
		@person = Person.find(session[:person_id])
	end


end