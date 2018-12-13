require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_task_url
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post tasks_url, params: { task: { barter: @task.barter, company_description: @task.company_description, company_name: @task.company_name, company_specialty: @task.company_specialty, correction_charge: @task.correction_charge, deadline: @task.deadline, position: @task.position, salary: @task.salary, social_network_link: @task.social_network_link, task_description: @task.task_description, task_materials: @task.task_materials } }
    end

    assert_redirected_to task_url(Task.last)
  end

  test "should show task" do
    get task_url(@task)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_url(@task)
    assert_response :success
  end

  test "should update task" do
    patch task_url(@task), params: { task: { barter: @task.barter, company_description: @task.company_description, company_name: @task.company_name, company_specialty: @task.company_specialty, correction_charge: @task.correction_charge, deadline: @task.deadline, position: @task.position, salary: @task.salary, social_network_link: @task.social_network_link, task_description: @task.task_description, task_materials: @task.task_materials } }
    assert_redirected_to task_url(@task)
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete task_url(@task)
    end

    assert_redirected_to tasks_url
  end
end
