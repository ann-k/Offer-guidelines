class TasksController < ApplicationController
  before_action :set_task, only: [:new_step_2, :show, :edit, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  def new_step_1
    @task = Task.new
  end

  def new_step_2
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        # if params[:internship][:step].to_i == 1
          format.html { redirect_to new_step_2_task_path(@task), notice: 'Задача создана!' }
        # end
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        if params[:task][:step].to_i == 3
          format.html { redirect_to redirect_url, notice: 'Задача создана!' }
        else
          format.html { redirect_to @task, notice: 'Задача обновлена!' }
        end
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Задача удалена.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:email, :company_name, :company_specialty, :company_description, :social_network_link, :position, :task_description, :task_materials, :deadline, :salary, :correction_charge, :barter, :step)
    end
end
