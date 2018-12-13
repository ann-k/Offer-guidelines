require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_job_url
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post jobs_url, params: { job: { application_contacts: @job.application_contacts, application_description: @job.application_description, application_materials: @job.application_materials, company_description: @job.company_description, company_name: @job.company_name, company_specialty: @job.company_specialty, conditions: @job.conditions, deadline: @job.deadline, email: @job.email, places_available: @job.places_available, position: @job.position, salary: @job.salary, schedule: @job.schedule, social_network_link: @job.social_network_link, special_requirements: @job.special_requirements, work_start_date: @job.work_start_date, worker_tasks: @job.worker_tasks } }
    end

    assert_redirected_to job_url(Job.last)
  end

  test "should show job" do
    get job_url(@job)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_url(@job)
    assert_response :success
  end

  test "should update job" do
    patch job_url(@job), params: { job: { application_contacts: @job.application_contacts, application_description: @job.application_description, application_materials: @job.application_materials, company_description: @job.company_description, company_name: @job.company_name, company_specialty: @job.company_specialty, conditions: @job.conditions, deadline: @job.deadline, email: @job.email, places_available: @job.places_available, position: @job.position, salary: @job.salary, schedule: @job.schedule, social_network_link: @job.social_network_link, special_requirements: @job.special_requirements, work_start_date: @job.work_start_date, worker_tasks: @job.worker_tasks } }
    assert_redirected_to job_url(@job)
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete job_url(@job)
    end

    assert_redirected_to jobs_url
  end
end
