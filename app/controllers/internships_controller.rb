class InternshipsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_internship, only: [:new_step_2, :new_step_3, :show, :edit, :update, :destroy]

  # GET /internships
  # GET /internships.json
  def index
    @internships = Internship.all
  end

  # GET /internships/1
  # GET /internships/1.json
  def show
  end

  # GET /internships/new
  def new
    @internship = Internship.new
  end

  def new_step_1
    @internship = Internship.new
  end

  def new_step_2
  end

  def new_step_3
  end

  # GET /internships/1/edit
  def edit
  end


  # POST /internships
  # POST /internships.json
  def create
    @internship = Internship.new(internship_params)

    @internship.status = "Активная"

    respond_to do |format|
      if @internship.save
        # if params[:internship][:step].to_i == 1
          format.html { redirect_to new_step_2_internship_path(@internship), notice: 'Internship was successfully created.' }
        # end
        format.json { render :show, status: :created, location: @internship }
      else
        format.html { render :new }
        format.json { render json: @internship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /internships/1
  # PATCH/PUT /internships/1.json
  def update
    logger.debug "TEST"
    logger.debug params
    logger.debug params[:internship][:step]
    logger.debug params[:internship][:step].to_i == 2

    if params[:internship][:step].to_i == 2
      redirect_url = new_step_3_internship_path(@internship)
    else
      redirect_url = internship_path(@internship)
    end

    respond_to do |format|
      if @internship.update(internship_params)
        format.html { redirect_to redirect_url, notice: 'Internship was successfully updated.' }
        format.json { render :show, status: :ok, location: @internship }
      else
        format.html { render :edit }
        format.json { render json: @internship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /internships/1
  # DELETE /internships/1.json
  def destroy
    @internship.destroy
    respond_to do |format|
      format.html { redirect_to internships_url, notice: 'Internship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_internship
      @internship = Internship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def internship_params
      params.require(:internship).permit(:email, :company_name, :company_specialty, :company_description, :social_network_link, :position, :places_available, :intern_tasks, :internship_duration, :schedule, :string, :salary, :conditions, :application_contacts, :application_description, :application_materials, :deadline, :step)
    end
end
