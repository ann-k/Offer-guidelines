require 'test_helper'

class InternshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @internship = internships(:one)
  end

  test "should get index" do
    get internships_url
    assert_response :success
  end

  test "should get new" do
    get new_internship_url
    assert_response :success
  end

  test "should create internship" do
    assert_difference('Internship.count') do
      post internships_url, params: { internship: { application_contacts: @internship.application_contacts, application_description: @internship.application_description, application_materials: @internship.application_materials, company_description: @internship.company_description, company_name: @internship.company_name, company_specialty: @internship.company_specialty, conditions: @internship.conditions, deadline: @internship.deadline, intern_tasks: @internship.intern_tasks, internship_duration: @internship.internship_duration, places_available: @internship.places_available, position: @internship.position, salary: @internship.salary, schedule: @internship.schedule, social_network_link: @internship.social_network_link, string: @internship.string } }
    end

    assert_redirected_to internship_url(Internship.last)
  end

  test "should show internship" do
    get internship_url(@internship)
    assert_response :success
  end

  test "should get edit" do
    get edit_internship_url(@internship)
    assert_response :success
  end

  test "should update internship" do
    patch internship_url(@internship), params: { internship: { application_contacts: @internship.application_contacts, application_description: @internship.application_description, application_materials: @internship.application_materials, company_description: @internship.company_description, company_name: @internship.company_name, company_specialty: @internship.company_specialty, conditions: @internship.conditions, deadline: @internship.deadline, intern_tasks: @internship.intern_tasks, internship_duration: @internship.internship_duration, places_available: @internship.places_available, position: @internship.position, salary: @internship.salary, schedule: @internship.schedule, social_network_link: @internship.social_network_link, string: @internship.string } }
    assert_redirected_to internship_url(@internship)
  end

  test "should destroy internship" do
    assert_difference('Internship.count', -1) do
      delete internship_url(@internship)
    end

    assert_redirected_to internships_url
  end
end
