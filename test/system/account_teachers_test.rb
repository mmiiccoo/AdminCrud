require "application_system_test_case"

class AccountTeachersTest < ApplicationSystemTestCase
  setup do
    @account_teacher = account_teachers(:one)
  end

  test "visiting the index" do
    visit account_teachers_url
    assert_selector "h1", text: "Account teachers"
  end

  test "should create account teacher" do
    visit account_teachers_url
    click_on "New account teacher"

    fill_in "Account name", with: @account_teacher.account_name
    fill_in "Name", with: @account_teacher.name
    fill_in "Password", with: @account_teacher.password
    click_on "Create Account teacher"

    assert_text "Account teacher was successfully created"
    click_on "Back"
  end

  test "should update Account teacher" do
    visit account_teacher_url(@account_teacher)
    click_on "Edit this account teacher", match: :first

    fill_in "Account name", with: @account_teacher.account_name
    fill_in "Name", with: @account_teacher.name
    fill_in "Password", with: @account_teacher.password
    click_on "Update Account teacher"

    assert_text "Account teacher was successfully updated"
    click_on "Back"
  end

  test "should destroy Account teacher" do
    visit account_teacher_url(@account_teacher)
    click_on "Destroy this account teacher", match: :first

    assert_text "Account teacher was successfully destroyed"
  end
end
