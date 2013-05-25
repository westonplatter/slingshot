class LocationsController < ApplicationController
  before_filter :authenticate_user! 

  # GET /location
  # GET /location.json
  def show
    @location = current_user.location

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @location }
    end
  end

  # GET /location/new
  # GET /location/new.json
  def new
    @location = Location.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @location }
    end
  end

  # GET /location/edit
  def edit
    @location = current_user.location
  end

  # POST /location
  # POST /location.json
  def create
    @location = current_user.build_location(params[:location])

    respond_to do |format|
      if @location.save
        format.html { redirect_to location_path, notice: 'Location was successfully created.' }
        format.json { render json: @location, status: :created, location: @location }
      else
        format.html { render action: "new" }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /location
  # PUT /location.json
  def update
    @location = current_user.location

    respond_to do |format|
      if @location.update_attributes(params[:location])
        format.html { redirect_to location_path, notice: 'Location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /location
  # DELETE /location.json
  def destroy
    @location = current_user.location
    @location.destroy

    respond_to do |format|
      format.html { redirect_to dashboard_url }
      format.json { head :no_content }
    end
  end

  def get_cities
    @reigon = Region.find(params[:region_id])
    @cities = region.cities
    render json: @cities
  end
end
