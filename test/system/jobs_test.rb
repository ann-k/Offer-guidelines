require "application_system_test_case"

class JobsTest < ApplicationSystemTestCase
  setup do
    @job = jobs(:one)
  end

  test "visiting the index" do
    visit jobs_url
    assert_selector "h1", text: "Jobs"
  end

  test "creating a Job" do
    visit jobs_url
    click_on "New Job"

    fill_in "Application Contacts", with: @job.application_contacts
    fill_in "Application Description", with: @job.application_description
    fill_in "Application Materials", with: @job.application_materials
    fill_in "Company Description", with: @job.company_description
    fill_in "Company Name", with: @job.company_name
    fill_in "Company Specialty", with: @job.company_specialty
    fill_in "Conditions", with: @job.conditions
    fill_in "Deadline", with: @job.deadline
    fill_in "Email", with: @job.email
    fill_in "Places Available", with: @job.places_available
    fill_in "Position", with: @job.position
    fill_in "Salary", with: @job.salary
    fill_in "Schedule", with: @job.schedule
    fill_in "Social Network Link", with: @job.social_network_link
    fill_in "Special Requirements", with: @job.special_requirements
    fill_in "Work Start Date", with: @job.work_start_date
    fill_in "Worker Tasks", with: @job.worker_tasks
    click_on "Create Job"

    assert_text "Job was successfully created"
    click_on "Back"
  end

  test "updating a Job" do
    visit jobs_url
    click_on "Edit", match: :first

    fill_in "Application Contacts", with: @job.application_contacts
    fill_in "Application Description", with: @job.application_description
    fill_in "Application Materials", with: @job.application_materials
    fill_in "Company Description", with: @job.company_description
    fill_in "Company Name", with: @job.company_name
    fill_in "Company Specialty", with: @job.company_specialty
    fill_in "Conditions", with: @job.conditions
    fill_in "Deadline", with: @job.deadline
    fill_in "Email", with: @job.email
    fill_in "Places Available", with: @job.places_available
    fill_in "Position", with: @job.position
    fill_in "Salary", with: @job.salary
    fill_in "Schedule", with: @job.schedule
    fill_in "Social Network Link", with: @job.social_network_link
    fill_in "Special Requirements", with: @job.special_requirements
    fill_in "Work Start Date", with: @job.work_start_date
    fill_in "Worker Tasks", with: @job.worker_tasks
    click_on "Update Job"

    assert_text "Job was successfully updated"
    click_on "Back"
  end

  test "destroying a Job" do
    visit jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job was successfully destroyed"
  end
end
