class ProfilesController < ApplicationController

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    # updateable_fields = ['cell', 'room_number', 'single']
    # params['user'].keys.each do |key| 
    #   current_user[key] = params['user'][key] if updateable_fields.include?(key)
    # end 
    
    @user = current_user
    @user.update_attributes(params[:user])
    
    respond_to do |format|
      if @user.save
        format.html { redirect_to action: :show, notice: 'Personal information was updated' }
        format.json { head :no_content}
      else
        format.html { redirect_to acion: :edit }
        format.json { render json: current_user.errors, status: :unprocessable_entity }
      end

    end
  end
  
end
