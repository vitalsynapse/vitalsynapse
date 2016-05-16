class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  def healthupload
      @user = User.find(current_user.id)
  end

  def healthrecord
      @user = User.find(current_user.id)

  end

  def dailyupdate
    @user = User.find(current_user.id)
    @user_glucose = Glucose.where(user_id: @user.id)
    @user_pressure = Pressure.where(user_id: @user.id)
    @user_clinics = ClinicRecord.where(user_id: @user.id)
    @user_bmi = Bmi.where(user_id: @user.id)
  end

  def userdashboard
    @user = User.find(current_user.id)
    # if current_user != @user
    #   redirect_to root_path
    # end
    @user = User.find(current_user.id)
    @user_health = Health.where(user_id: @user.id)
    @user_questionaire = SurveyRecord.where(user_id: @user.id)
    @questions=  Question.all
    @user_record_two = User.find(current_user.id)
    # @first_question = @question.find(1)

  end
  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new

  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to dashboard_path(@user), notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: dashboard_path(@user) }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    Rails.logger.info ">>> params #{params.inspect}"
    Rails.logger.info ">>> params commit #{params[:commit]}"
    respond_to do |format|
      if @user.update!(user_params)

        format.html { redirect_to dashboard_path(@user), notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(
      :first_name, :lastname, :gender, :ethnicity, :blood_type, :occupation, :dob, :marital_status, :address, :state, :city, :postcode, :email, :height, :weight, :name,
      bloods_attributes:[:id, :user_id, :title, :blood_file,:_destroy ],
      urines_attributes: [:id, :user_id, :title, :urine_file, :_destroy],
      xrays_attributes: [:id, :user_id, :title, :xray_file, :_destroy],
      cancer_markers_attributes:[:id, :user_id, :title, :cancer_file, :_destroy],
      scopes_attributes: [:id, :user_id, :title, :scope_file, :_destroy ],
      ultrasounds_attributes: [:id, :user_id, :title, :ultrasound_file, :_destroy],
      mris_attributes: [:id, :user_id, :title, :mri_file, :_destroy],
      petscans_attributes: [:id, :user_id, :title, :petscan_file, :_destroy],
      healths_attributes: [:id, :user_id, :subject, :details, :file, :record_category_id, :_destroy],
      glucoses_attributes: [:id, :user_id, :measurement, :context, :_destroy],
      pressures_attributes: [:id, :user_id, :sbp, :dpb, :context, :_destroy],
      clinic_records_attributes: [:id, :user_id, :problem, :diagnosis, :treatment, :_destroy],
      bmis_attributes: [:id, :height, :weight, :boddymassindex,:_destroy],
      survey_records_attributes: [:user_id, :subject, results_attributes: [:survey_record_id, :question_id, :answer]]
      )
    end


end
