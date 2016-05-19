class UsersController < ApplicationController
  layout 'user'
  before_action :authenticate_user!
  before_action :set_user, only: [:index, :show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
  end

  def healthupload
      @user = User.find(current_user.id)
      Rails.logger.info ">>> @user #{@user.inspect}"
  end

  def healthrecord
      @user = User.find(current_user.id)
      @user_health = Health.where(user_id: @user.id)

  end

  def dailyupdate
    @user = User.find(current_user.id)
    @user_glucose = Glucose.where(user_id: @user.id)
    @user_pressure = Pressure.where(user_id: @user.id)
    @user_clinics = ClinicRecord.where(user_id: @user.id)
    @user_bmi = Bmi.where(user_id: @user.id)
    @user_lungs = Respiratory.where(user_id: @user.id)
  end

  def userdashboard
    @user = User.find(current_user.id)
    @user_health = Health.where(user_id: @user.id)
    @user_bmi = Bmi.where(user_id: @user.id).last
    @user_blood = ClinicalBloodRecord.where(user_id: @user.id).last
    @blood_pressure = Pressure.where(user_id: @user.id).last
    @pulse = Pulse.where(user_id: @user.id).last
    @lungs = Respiratory.where(user_id: @user.id).last
    @glucose = Glucose.where(user_id: @user.id)
    @random_glucose = @glucose.random_blood_sugar.last
    @fasting_glucose = @glucose.fasting_blood_sugar.last

    # @first_question = @question.find(1)

  end

  def questionaire
    @user = User.find(current_user.id)
    @questions=  Question.all
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
      :first_name, :lastname, :gender, :profile_pic, :ethnicity, :blood_type, :occupation, :dob, :marital_status, :address, :state, :city, :postcode, :email, :height, :weight, :name,
      healths_attributes: [:id, :user_id, :subject, :details, :file, :record_category_id, :_destroy],
      glucoses_attributes: [:id, :user_id, :measurement, :context,:time_taken, :date_taken, :_destroy],
      pressures_attributes: [:id, :user_id, :sbp, :dpb, :context, :time_taken, :date_taken, :_destroy],
      respiratories_attributes: [:id, :user_id, :context, :measurement, :date_taken, :time_taken, :_destroy],
      clinic_records_attributes: [:id, :user_id, :problem, :diagnosis, :treatment,:clinic_name, :visit_date,:visit_time, :cost, :_destroy],
      bmis_attributes: [:id, :height, :weight, :boddymassindex,:_destroy],
       results_attributes: [:id,:user_id, :question_id, :answer_id, :answer,:_destroy, result_answers_attributes: [:id, :result_id, :answer_id, :_destroy]]
      )
    end


end
