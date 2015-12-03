class SurveysController < ApplicationController
  before_action :authenticate_user!
  before_action :set_survey, only: [:show, :edit, :update, :destroy]
  before_action :redirect_user, only: [:destroy, :new]
  
  def redirect_user
    redirect_to root_path
  end

  # GET /surveys
  # GET /surveys.json
  def index
    @surveys = Survey.where(studentid: current_user.id, isdone: 0 )
  end

  # GET /surveys/1
  # GET /surveys/1.json
  def show
  end

  # GET /surveys/new
  def new
    @survey = Survey.new
  end

  # GET /surveys/1/edit
  def edit
  end

  # POST /surveys
  # POST /surveys.json
  def create
    @survey = Survey.new(survey_params)

    respond_to do |format|
      if @survey.save
        format.html { redirect_to @survey, notice: 'Survey was successfully created.' }
        format.json { render :show, status: :created, location: @survey }
      else
        format.html { render :new }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surveys/1
  # PATCH/PUT /surveys/1.json
  def update
    respond_to do |format|
      if @survey.update(survey_params)
        format.html { redirect_to @survey, notice: 'Survey was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey }
      else
        format.html { render :edit }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surveys/1
  # DELETE /surveys/1.json
  def destroy
    @survey.destroy
    respond_to do |format|
      format.html { redirect_to surveys_url, notice: 'Survey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_params
      params.require(:survey).permit(:subj, :crsenum, :sect, :coursetitle, :credits, :instrfirst, :instrlast, :q1text, :q1num, :q2text, :q2num, :q3text, :q3num, :q4text, :q4num, :q5text, :q5num, :q6text, :q6num, :q7text, :q7num, :q8text, :q8num, :q9text, :q9num, :q10text, :q10num, :q11text, :q11num, :q12text, :q12num, :q13text, :q13num, :q14text, :q14num, :q15text, :q15num, :isdone)
    end
end
