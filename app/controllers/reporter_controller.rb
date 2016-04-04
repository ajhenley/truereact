class ReporterController < ApplicationController
  before_action :authenticate_user!
  before_action :set_report, only: [:show]
  
  def index
    @surveys = Survey.select(:subj, :crsenum, :sect, :coursetitle, :instrfirst, :instrlast, :crn, :credits).where(instrid: current_user.id, isdone: 3 ).distinct
  end
  
  def indexall
    @surveys = Survey.select(:subj, :crsenum, :sect, :coursetitle, :instrfirst, :instrlast, :crn, :credits).where(isdone: 3 ).order(:subj, :crsenum, :sect).distinct
  end
  
  # GET /show/1
  # GET /show/1.json
  def show
    @donesurveys = Survey.where(crn: params[:crn], isdone: 3)
    @donedeptsurveys = Survey.where(subj: @survey[0].subj, isdone: 3)
    @doneinstrsurveys = Survey.where(instrid: @survey[0].instrid, isdone: 3)
    @numdone = Survey.where(crn: params[:crn], isdone: 3).count
    @numdeptdone = Survey.where(subj: @survey[0].subj, isdone: 3).count
    @numinstrsurveys = Survey.where(instrid: @survey[0].instrid, isdone: 3).count
    @numall = Survey.where(crn: params[:crn]).count
    @q1 = @survey[0].q1
    @q2 = @survey[0].q2
    @q3 = @survey[0].q3
    @q4 = @survey[0].q4
    @q5 = @survey[0].q5
    @q6 = @survey[0].q6
    @q7 = @survey[0].q7
    @q8 = @survey[0].q8
    @q9 = @survey[0].q9
    @q10 = @survey[0].q10
    @q11 = @survey[0].q11
    @q12 = @survey[0].q12
    @q13 = @survey[0].q13
    @q14 = @survey[0].q14
    @q15 = @survey[0].q15
    @q1tot = 0.0
    @q2tot = 0.0
    @q3tot = 0.0
    @q4tot = 0.0
    @q5tot = 0.0
    @q6tot = 0.0
    @q7tot = 0.0
    @q8tot = 0.0
    @q9tot = 0.0
    @q10tot = 0.0
    @q11sum ||= []
    @q12sum ||= []
    @q13sum ||= []
    @q14sum ||= []
    @q15sum ||= []
    
    @donesurveys.each do |survey|
        @q1tot = @q1tot + survey.q1num
        @q2tot = @q2tot + survey.q2num
        @q3tot = @q3tot + survey.q3num
        @q4tot = @q4tot + survey.q4num
        @q5tot = @q5tot + survey.q5num
        @q6tot = @q6tot + survey.q6num
        @q7tot = @q7tot + survey.q7num
        @q8tot = @q8tot + survey.q8num
        @q9tot = @q9tot + survey.q9num
        @q10tot = @q10tot + survey.q10num
        if not survey.q11text.blank?
          @q11sum << survey.q11text
        end
        if not survey.q12text.blank?
          @q12sum << survey.q12text
        end
        if not survey.q13text.blank?
          @q13sum << survey.q13text
        end
        if not survey.q14text.blank?
          @q14sum << survey.q14text
        end
        if not survey.q15text.blank?
          @q15sum << survey.q15text
        end
        
    end
    @q1avg = @q1tot / @numdone
    @q2avg = @q2tot / @numdone
    @q3avg = @q3tot / @numdone
    @q4avg = @q4tot / @numdone
    @q5avg = @q5tot / @numdone
    @q6avg = @q6tot / @numdone
    @q7avg = @q7tot / @numdone
    @q8avg = @q8tot / @numdone
    @q9avg = @q9tot / @numdone
    @q10avg = @q10tot / @numdone
    
    @q1tot = 0.0
    @q2tot = 0.0
    @q3tot = 0.0
    @q4tot = 0.0
    @q5tot = 0.0
    @q6tot = 0.0
    @q7tot = 0.0
    @q8tot = 0.0
    @q9tot = 0.0
    @q10tot = 0.0
    @donedeptsurveys.each do |survey|
        @q1tot = @q1tot + survey.q1num
        @q2tot = @q2tot + survey.q2num
        @q3tot = @q3tot + survey.q3num
        @q4tot = @q4tot + survey.q4num
        @q5tot = @q5tot + survey.q5num
        @q6tot = @q6tot + survey.q6num
        @q7tot = @q7tot + survey.q7num
        @q8tot = @q8tot + survey.q8num
        @q9tot = @q9tot + survey.q9num
        @q10tot = @q10tot + survey.q10num
    end
    @q1deptavg = @q1tot / @numdeptdone
    @q2deptavg = @q2tot / @numdeptdone
    @q3deptavg = @q3tot / @numdeptdone
    @q4deptavg = @q4tot / @numdeptdone
    @q5deptavg = @q5tot / @numdeptdone
    @q6deptavg = @q6tot / @numdeptdone
    @q7deptavg = @q7tot / @numdeptdone
    @q8deptavg = @q8tot / @numdeptdone
    @q9deptavg = @q9tot / @numdeptdone
    @q10deptavg = @q10tot / @numdeptdone
    
    @q1tot = 0.0
    @q2tot = 0.0
    @q3tot = 0.0
    @q4tot = 0.0
    @q5tot = 0.0
    @q6tot = 0.0
    @q7tot = 0.0
    @q8tot = 0.0
    @q9tot = 0.0
    @q10tot = 0.0
    @doneinstrsurveys.each do |survey|
        @q1tot = @q1tot + survey.q1num
        @q2tot = @q2tot + survey.q2num
        @q3tot = @q3tot + survey.q3num
        @q4tot = @q4tot + survey.q4num
        @q5tot = @q5tot + survey.q5num
        @q6tot = @q6tot + survey.q6num
        @q7tot = @q7tot + survey.q7num
        @q8tot = @q8tot + survey.q8num
        @q9tot = @q9tot + survey.q9num
        @q10tot = @q10tot + survey.q10num
    end
    @q1instavg = @q1tot / @numinstrsurveys
    @q2instavg = @q2tot / @numinstrsurveys
    @q3instavg = @q3tot / @numinstrsurveys
    @q4instavg = @q4tot / @numinstrsurveys
    @q5instavg = @q5tot / @numinstrsurveys
    @q6instavg = @q6tot / @numinstrsurveys
    @q7instavg = @q7tot / @numinstrsurveys
    @q8instavg = @q8tot / @numinstrsurveys
    @q9instavg = @q9tot / @numinstrsurveys
    @q10instavg = @q10tot / @numinstrsurveys
  end
  
  private
    def set_report
      @survey = Survey.where(crn: params[:crn])
    end
end
