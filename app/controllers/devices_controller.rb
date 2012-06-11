class DevicesController < ApplicationController
  
  def create
    @person = Person.find(session[:person_id])
    @device = @person.devices.create(params[:device])
    redirect_to person_path(@person.id)
  end

  # DELETE /devices/1
  # DELETE /devices/1.json
  def destroy
    @person = Person.find(session[:person_id])
    @device = @person.devices.find(params[:id])
    @device.destroy
    redirect_to person_path(@person)
  end

  def show
    @person = Person.find(session[:person_id])
    @device = @person.devices.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @device }
    end
  end

  # GET /devices/new
  # GET /devices/new.json
  def new
    @device = Device.new

    respond_to do |format|
      format.html new.html.erb
      format.json { render json: @device }
    end
  end

  # GET /devices/1/edit
  def edit
    @person = Person.find(session[:person_id])
    @device = @person.devices.find(params[:id])
  end

  # PUT /devices/1
  # PUT /devices/1.json
  def update
    @person = Person.find(session[:person_id])
    @device = @person.devices.find(params[:id])

    respond_to do |format|
      if @device.update_attributes(params[:device])
        format.html { redirect_to [@person, @device], notice: 'Device was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @device.errors, status: :unprocessable_entity }
      end
    end
  end

  # devices index on profile page, therefore redirects to user's profile page
  def index
    redirect_to people_path and return
  end

end