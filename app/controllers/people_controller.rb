class PeopleController < ApplicationController

  before_filter :authenticate
  
  # GET /people
  # GET /people.json
  def index
    redirect_to person_path(current_person)
  end

  # GET /people/1
  # GET /people/1.json
  def show
    @person = Person.find(session[:person_id])
    @vpn = @person.vpn

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @person }
    end
  end

  # GET /people/new
  # GET /people/new.json
  def new
    @person = Person.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @person }
    end
  end

  # GET /people/1/edit
  def edit
    @person = Person.find(session[:person_id])
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(session[:person_id])

    respond_to do |format|
      if @person.save
        format.html { redirect_to :action => 'show', notice: 'Person was successfully created.' }
        format.json { render json: @person, status: :created, location: @person }
      else
        format.html { render action: "new" }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /people/1
  # PUT /people/1.json
  def update
    @person = Person.find(params[:id])

    respond_to do |format|
      if @person.update_attributes(params[:person])
        format.html { redirect_to @person, notice: 'Your info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { redirect_to @person, notice: 'Changes were not saved.' }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    respond_to do |format|
      format.html { redirect_to people_url }
      format.json { head :no_content }
    end
  end

  # moved into its own MVC object, vpn.rb
  # def vpn
  # end

  # pulls the 'location' view to update the person's location info
  def region
    edit # @person = Person.find(params[:id])
  end
end
