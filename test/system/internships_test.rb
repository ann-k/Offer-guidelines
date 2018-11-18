require "application_system_test_case"

class InternshipsTest < ApplicationSystemTestCase
  setup do
    @internship = internships(:one)
  end

  test "visiting the index" do
    visit internships_url
    assert_selector "h1", text: "Internships"
  end

  test "creating a Internship" do
    visit internships_url
    click_on "New Internship"

    fill_in "Application Contacts", with: @internship.application_contacts
    fill_in "Application Description", with: @internship.application_description
    fill_in "Application Materials", with: @internship.application_materials
    fill_in "Company Description", with: @internship.company_description
    fill_in "Company Name", with: @internship.company_name
    fill_in "Company Specialty", with: @internship.company_specialty
    fill_in "Conditions", with: @internship.conditions
    fill_in "Deadline", with: @internship.deadline
    fill_in "Intern Tasks", with: @internship.intern_tasks
    fill_in "Internship Duration", with: @internship.internship_duration
    fill_in "Places Available", with: @internship.places_available
    fill_in "Position", with: @internship.position
    fill_in "Salary", with: @internship.salary
    fill_in "Schedule", with: @internship.schedule
    fill_in "Social Network Link", with: @internship.social_network_link
    fill_in "String", with: @internship.string
    click_on "Create Internship"

    assert_text "Internship was successfully created"
    click_on "Back"
  end

  test "updating a Internship" do
    visit internships_url
    click_on "Edit", match: :first

    fill_in "Application Contacts", with: @internship.application_contacts
    fill_in "Application Description", with: @internship.application_description
    fill_in "Application Materials", with: @internship.application_materials
    fill_in "Company Description", with: @internship.company_description
    fill_in "Company Name", with: @internship.company_name
    fill_in "Company Specialty", with: @internship.company_specialty
    fill_in "Conditions", with: @internship.conditions
    fill_in "Deadline", with: @internship.deadline
    fill_in "Intern Tasks", with: @internship.intern_tasks
    fill_in "Internship Duration", with: @internship.internship_duration
    fill_in "Places Available", with: @internship.places_available
    fill_in "Position", with: @internship.position
    fill_in "Salary", with: @internship.salary
    fill_in "Schedule", with: @internship.schedule
    fill_in "Social Network Link", with: @internship.social_network_link
    fill_in "String", with: @internship.string
    click_on "Update Internship"

    assert_text "Internship was successfully updated"
    click_on "Back"
  end

  test "destroying a Internship" do
    visit internships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Internship was successfully destroyed"
  end
end
