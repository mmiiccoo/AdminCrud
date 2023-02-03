require "application_system_test_case"

class AccountStudentsTest < ApplicationSystemTestCase
  setup do
    @account_student = account_students(:one)
  end

  test "visiting the index" do
    visit account_students_url
    assert_selector "h1", text: "Account students"
  end

  test "should create account student" do
    visit account_students_url
    click_on "New account student"

    fill_in "Account name", with: @account_student.account_name
    fill_in "Name", with: @account_student.name
    fill_in "Password", with: @account_student.password
    click_on "Create Account student"

    assert_text "Account student was successfully created"
    click_on "Back"
  end

  test "should update Account student" do
    visit account_student_url(@account_student)
    click_on "Edit this account student", match: :first

    fill_in "Account name", with: @account_student.account_name
    fill_in "Name", with: @account_student.name
    fill_in "Password", with: @account_student.password
    click_on "Update Account student"

    assert_text "Account student was successfully updated"
    click_on "Back"
  end

  test "should destroy Account student" do
    visit account_student_url(@account_student)
    click_on "Destroy this account student", match: :first

    assert_text "Account student was successfully destroyed"
  end
end
