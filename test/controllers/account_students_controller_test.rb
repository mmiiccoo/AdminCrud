require "test_helper"

class AccountStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_student = account_students(:one)
  end

  test "should get index" do
    get account_students_url
    assert_response :success
  end

  test "should get new" do
    get new_account_student_url
    assert_response :success
  end

  test "should create account_student" do
    assert_difference("AccountStudent.count") do
      post account_students_url, params: { account_student: { account_name: @account_student.account_name, name: @account_student.name, password: @account_student.password } }
    end

    assert_redirected_to account_student_url(AccountStudent.last)
  end

  test "should show account_student" do
    get account_student_url(@account_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_student_url(@account_student)
    assert_response :success
  end

  test "should update account_student" do
    patch account_student_url(@account_student), params: { account_student: { account_name: @account_student.account_name, name: @account_student.name, password: @account_student.password } }
    assert_redirected_to account_student_url(@account_student)
  end

  test "should destroy account_student" do
    assert_difference("AccountStudent.count", -1) do
      delete account_student_url(@account_student)
    end

    assert_redirected_to account_students_url
  end
end
