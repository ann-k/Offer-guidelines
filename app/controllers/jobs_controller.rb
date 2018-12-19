class JobsController < ApplicationController
  before_action :set_job, only: [:new_step_2, :new_step_3, :show, :edit, :update, :destroy]

  # GET /jobs
  # GET /jobs.json
  def index
    @jobs = Job.all
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
  end

  # GET /jobs/new
  def new
    @job = Job.new
  end

  def new_step_1
    @job = Job.new
  end

  def new_step_2
  end

  def new_step_3
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to new_step_2_job_path(@job), notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    if params[:job][:step].to_i == 2
      redirect_url = new_step_3_job_path(@job)
    else
      redirect_url = job_path(@job)
    end

    respond_to do |format|
      if @job.update(job_params)
        if params[:job][:step].to_i == 3
          format.html { redirect_to redirect_url, notice: 'Вакансия создана!' }
        else
          format.html { redirect_to redirect_url, notice: 'Вакансия обновлена!' }
        end
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end

  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:email, :company_name, :company_specialty, :company_description, :social_network_link, :position, :places_available, :worker_tasks, :special_requirements, :work_start_date, :schedule, :salary_min, :salary_max, :conditions, :application_contacts, :application_description, :application_materials, :deadline, :deadline_none, :step)
    end
end
