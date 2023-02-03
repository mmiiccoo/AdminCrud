require "test_helper"

class AccountTeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_teacher = account_teachers(:one)
  end

  test "should get index" do
    get account_teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_account_teacher_url
    assert_response :success
  end

  test "should create account_teacher" do
    assert_difference("AccountTeacher.count") do
      post account_teachers_url, params: { account_teacher: { account_name: @account_teacher.account_name, name: @account_teacher.name, password: @account_teacher.password } }
    end

    assert_redirected_to account_teacher_url(AccountTeacher.last)
  end

  test "should show account_teacher" do
    get account_teacher_url(@account_teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_teacher_url(@account_teacher)
    assert_response :success
  end

  test "should update account_teacher" do
    patch account_teacher_url(@account_teacher), params: { account_teacher: { account_name: @account_teacher.account_name, name: @account_teacher.name, password: @account_teacher.password } }
    assert_redirected_to account_teacher_url(@account_teacher)
  end

  test "should destroy account_teacher" do
    assert_difference("AccountTeacher.count", -1) do
      delete account_teacher_url(@account_teacher)
    end

    assert_redirected_to account_teachers_url
  end
end
