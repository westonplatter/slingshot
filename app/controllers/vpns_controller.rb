class VpnsController < ApplicationController
  before_filter :authenticate_user!

  # GET /vpn
  # GET /vpn.json
  def show
    @vpn = current_user.try(:vpn)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vpn }
    end
  end

  # GET /vpn/new
  # GET /vpn/new.json
  def new
    @vpn = Vpn.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vpn }
    end
  end

  # GET /vpn/edit
  def edit
    @vpn = current_user.vpn
  end

  # POST /vpns
  # POST /vpns.json
  def create
    @vpn = current_user.build_vpn(params[:vpn])

    respond_to do |format|
      if @vpn.save
        format.html { redirect_to vpn_path, notice: 'Vpn was successfully created.' }
        format.json { render json: @vpn, status: :created, location: @vpn }
      else
        format.html { render action: "new" }
        format.json { render json: @vpn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vpns
  # PUT /vpns.json
  def update
    @vpn = current_user.vpn

    respond_to do |format|
      if @vpn.update_attributes(params[:vpn])
        format.html { redirect_to vpn_path, notice: 'Vpn was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vpn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vpn
  # DELETE /vpn.json
  def destroy
    @vpn = current_user.vpn
    @vpn.destroy

    respond_to do |format|
      format.html { redirect_to dashboard_url }
      format.json { head :no_content }
    end
  end
end
