require 'test_helper'

class SurveysControllerTest < ActionController::TestCase
  setup do
    @survey = surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey" do
    assert_difference('Survey.count') do
      post :create, survey: { coursetitle: @survey.coursetitle, credits: @survey.credits, crsenum: @survey.crsenum, instrfirst: @survey.instrfirst, instrlast: @survey.instrlast, q10: @survey.q10, q10num: @survey.q10num, q10text: @survey.q10text, q1: @survey.q1, q1num: @survey.q1num, q1text: @survey.q1text, q2: @survey.q2, q2num: @survey.q2num, q2text: @survey.q2text, q3: @survey.q3, q3num: @survey.q3num, q3text: @survey.q3text, q4: @survey.q4, q4num: @survey.q4num, q4text: @survey.q4text, q5: @survey.q5, q5num: @survey.q5num, q5text: @survey.q5text, q6: @survey.q6, q6num: @survey.q6num, q6text: @survey.q6text, q7: @survey.q7, q7num: @survey.q7num, q7text: @survey.q7text, q8: @survey.q8, q8num: @survey.q8num, q8text: @survey.q8text, q9: @survey.q9, q9num: @survey.q9num, q9text: @survey.q9text, sect: @survey.sect, subj: @survey.subj }
    end

    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should show survey" do
    get :show, id: @survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey
    assert_response :success
  end

  test "should update survey" do
    patch :update, id: @survey, survey: { coursetitle: @survey.coursetitle, credits: @survey.credits, crsenum: @survey.crsenum, instrfirst: @survey.instrfirst, instrlast: @survey.instrlast, q10: @survey.q10, q10num: @survey.q10num, q10text: @survey.q10text, q1: @survey.q1, q1num: @survey.q1num, q1text: @survey.q1text, q2: @survey.q2, q2num: @survey.q2num, q2text: @survey.q2text, q3: @survey.q3, q3num: @survey.q3num, q3text: @survey.q3text, q4: @survey.q4, q4num: @survey.q4num, q4text: @survey.q4text, q5: @survey.q5, q5num: @survey.q5num, q5text: @survey.q5text, q6: @survey.q6, q6num: @survey.q6num, q6text: @survey.q6text, q7: @survey.q7, q7num: @survey.q7num, q7text: @survey.q7text, q8: @survey.q8, q8num: @survey.q8num, q8text: @survey.q8text, q9: @survey.q9, q9num: @survey.q9num, q9text: @survey.q9text, sect: @survey.sect, subj: @survey.subj }
    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should destroy survey" do
    assert_difference('Survey.count', -1) do
      delete :destroy, id: @survey
    end

    assert_redirected_to surveys_path
  end
end
