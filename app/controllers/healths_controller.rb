class HealthsController < ApplicationController
  before_action :authenticate_user!
  #  before_action :set_user

  def new
    @health = Health.new
  end

  def create
    @health = Health.new(user_params)

    respond_to do |format|
      if @health.save
        format.html { redirect_to dashboard_path, notice: 'Record was successfully created.' }
        # format.json { render :show, status: :created, location: dashboard_path }
        format.json {render :health_record, location: health_upload_path(@user)}
      else
        format.html { redirect_to dashboard_path, notice: 'Try again'  }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private


    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:health).permit(:user_id, :subject, :details, :file,  :record_category_id,)

    end


end
