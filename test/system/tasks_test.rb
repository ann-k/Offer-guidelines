require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  setup do
    @task = tasks(:one)
  end

  test "visiting the index" do
    visit tasks_url
    assert_selector "h1", text: "Tasks"
  end

  test "creating a Task" do
    visit tasks_url
    click_on "New Task"

    fill_in "Barter", with: @task.barter
    fill_in "Company Description", with: @task.company_description
    fill_in "Company Name", with: @task.company_name
    fill_in "Company Specialty", with: @task.company_specialty
    fill_in "Correction Charge", with: @task.correction_charge
    fill_in "Deadline", with: @task.deadline
    fill_in "Position", with: @task.position
    fill_in "Salary", with: @task.salary
    fill_in "Social Network Link", with: @task.social_network_link
    fill_in "Task Description", with: @task.task_description
    fill_in "Task Materials", with: @task.task_materials
    click_on "Create Task"

    assert_text "Task was successfully created"
    click_on "Back"
  end

  test "updating a Task" do
    visit tasks_url
    click_on "Edit", match: :first

    fill_in "Barter", with: @task.barter
    fill_in "Company Description", with: @task.company_description
    fill_in "Company Name", with: @task.company_name
    fill_in "Company Specialty", with: @task.company_specialty
    fill_in "Correction Charge", with: @task.correction_charge
    fill_in "Deadline", with: @task.deadline
    fill_in "Position", with: @task.position
    fill_in "Salary", with: @task.salary
    fill_in "Social Network Link", with: @task.social_network_link
    fill_in "Task Description", with: @task.task_description
    fill_in "Task Materials", with: @task.task_materials
    click_on "Update Task"

    assert_text "Task was successfully updated"
    click_on "Back"
  end

  test "destroying a Task" do
    visit tasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task was successfully destroyed"
  end
end
