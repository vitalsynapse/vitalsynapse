class UsersController < ApplicationController
  layout 'user'
  before_action :authenticate_user!
  before_action :set_user, only: [:index, :show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index

  end

  def healthupload

      @user_record = User.find(current_user.id)
      @user = User.find(current_user.id)

      # if @user.pdpa == false || nil
      #   redirect_to pdpa_path(@user)
      # end
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
    @user_lungs = Pulse.where(user_id: @user.id)
    @user_resp_rate = LungRate.where(user_id: @user.id)
  end

  def userdashboard
    @user = current_user
    @user_health = Health.where(user_id: @user.id)
    @user_bmi = Bmi.where(user_id: @user.id).last
    @user_blood = ClinicalBloodRecord.where(user_id: @user.id).last
    @blood_pressure = Pressure.where(user_id: @user.id).last
    @pulse = Pulse.where(user_id: @user.id).last
    @lungs = LungRate.where(user_id: @user.id).last
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

  def pdpa
    @user = User.find(current_user.id)
  end
  # GET /users/new
  def new
    @user = User.new
    @user = current_user
    @health = @user.healths.build
    # @reference  = @application.application_references.build


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

    respond_to do |format|
      if @user.update!(user_params)
          if params[:user][:healths_attributes]
            format.html { redirect_to health_upload_path(@user), notice: 'Record was successfully uploaded.' }
            format.json { render :show, status: :ok, location: @user }
          elsif params[:user][:glucoses_attributes] || params[:user][:pressures_attributes] || params[:user][:clinic_records_attributes] || params[:user][:pulses_attributes] || params[:user][:lung_rates_attributes] || params[:user][:bmis_attributes]
            format.html { redirect_to daily_update_path(@user), notice: 'Record was successfully updated.' }
            format.json { render :show, status: :ok, location: @user }
          elsif params[:user][:pdpa]
            format.html { redirect_to health_upload_path(@user), notice: 'Thank you!You may proceed with uploading your health records' }
            format.json { render :show, status: :ok, location: @user }
          else
            format.html { redirect_to dashboard_path(@user), notice: 'User was successfully updated.' }
            format.json { render :show, status: :ok, location: @user }
          end
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
      :first_name, :last_name, :gender, :profile_pic, :ethnicity, :blood_type, :occupation, :dob, :marital_status, :address, :state, :city, :postcode, :email, :height, :weight, :name,:pdpa, :blood_group,
      healths_attributes: [:id, :user_id, :subject, :details, :file, :record_category_id, :_destroy],
      glucoses_attributes: [:id, :user_id, :measurement, :context,:time_taken, :date_taken, :_destroy],
      pressures_attributes: [:id, :user_id, :sbp, :dpb, :context, :time_taken, :date_taken, :_destroy],
      pulses_attributes: [:id, :user_id, :context, :measurement, :date_taken, :time_taken, :_destroy],
      lung_rates_attributes: [:id, :user_id, :rate, :date_taken, :time_taken,:context_two,:_destroy],
      clinic_records_attributes: [:id, :user_id, :problem, :diagnosis, :treatment,:clinic_name, :visit_date,:visit_time, :cost, :_destroy],
      bmis_attributes: [:id, :height, :user_weigh, :boddymassindex,:date_taken, :time_taken,:_destroy],
       results_attributes: [:id,:user_id, :question_id, :answer_id, :answer,:_destroy, result_answers_attributes: [:id, :result_id, :answer_id, :_destroy]]
      )
    end


end
