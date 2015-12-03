require 'test_helper'

class TemplatesControllerTest < ActionController::TestCase
  setup do
    @template = templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create template" do
    assert_difference('Template.count') do
      post :create, template: { isActive: @template.isActive, owner: @template.owner, q10: @template.q10, q1: @template.q1, q2: @template.q2, q3: @template.q3, q4: @template.q4, q5: @template.q5, q6: @template.q6, q7: @template.q7, q8: @template.q8, q9: @template.q9, qtype10: @template.qtype10, qtype1: @template.qtype1, qtype2: @template.qtype2, qtype3: @template.qtype3, qtype4: @template.qtype4, qtype5: @template.qtype5, qtype6: @template.qtype6, qtype7: @template.qtype7, qtype8: @template.qtype8, qtype9: @template.qtype9, schoolname: @template.schoolname }
    end

    assert_redirected_to template_path(assigns(:template))
  end

  test "should show template" do
    get :show, id: @template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @template
    assert_response :success
  end

  test "should update template" do
    patch :update, id: @template, template: { isActive: @template.isActive, owner: @template.owner, q10: @template.q10, q1: @template.q1, q2: @template.q2, q3: @template.q3, q4: @template.q4, q5: @template.q5, q6: @template.q6, q7: @template.q7, q8: @template.q8, q9: @template.q9, qtype10: @template.qtype10, qtype1: @template.qtype1, qtype2: @template.qtype2, qtype3: @template.qtype3, qtype4: @template.qtype4, qtype5: @template.qtype5, qtype6: @template.qtype6, qtype7: @template.qtype7, qtype8: @template.qtype8, qtype9: @template.qtype9, schoolname: @template.schoolname }
    assert_redirected_to template_path(assigns(:template))
  end

  test "should destroy template" do
    assert_difference('Template.count', -1) do
      delete :destroy, id: @template
    end

    assert_redirected_to templates_path
  end
end
