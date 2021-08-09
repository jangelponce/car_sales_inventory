class Admin::DealershipsController < Admin::BaseController
  before_action :set_dealership, only: %i[ show edit update destroy ]

  # GET /admin/dealerships or /admin/dealerships.json
  def index
    @dealerships = Dealership.all
  end

  # GET /admin/dealerships/1 or /admin/dealerships/1.json
  def show
  end

  # GET /admin/dealerships/new
  def new
    @dealership = Dealership.new
  end

  # GET /admin/dealerships/1/edit
  def edit
  end

  # POST /admin/dealerships or /admin/dealerships.json
  def create
    @dealership = Dealership.new(dealership_params)

    respond_to do |format|
      if @dealership.save
        format.html { redirect_to admin_dealership_path(@dealership), notice: "Dealership was successfully created." }
        format.json { render :show, status: :created, location: admin_dealership_path(@dealership) }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dealership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/dealerships/1 or /admin/dealerships/1.json
  def update
    respond_to do |format|
      if @dealership.update(dealership_params)
        format.html { redirect_to admin_dealership_path(@dealership), notice: "Dealership was successfully updated." }
        format.json { render :show, status: :ok, location: admin_dealership_path(@dealership) }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dealership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/dealerships/1 or /admin/dealerships/1.json
  def destroy
    @dealership.destroy
    respond_to do |format|
      format.html { redirect_to admin_dealerships_url, notice: "Dealership was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dealership
      @dealership = Dealership.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dealership_params
      params.require(:dealership).permit(:name)
    end
end
