class PrescriptionsController < ProtectedController
  before_action :set_prescription, only: [:show, :update, :destroy]

  # GET /prescriptions
  def index
    @prescriptions = current_user.prescriptions

    render json: @prescriptions
  end

  # GET /prescriptions/1
  def show
    render json: @prescription
  end

  # POST /prescriptions
  def create
    @prescription = current_user.prescriptions.build(prescription_params)

    if @prescription.save
      render json: @prescription, status: :created, location: @prescription
    else
      render json: @prescription.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /prescriptions/1
  def update
    if @prescription.update(prescription_params)
      render json: @prescription
    else
      render json: @prescription.errors, status: :unprocessable_entity
    end
  end

  # DELETE /prescriptions/1
  def destroy
    @prescription.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescription
      @prescription = current_user.prescriptions.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def prescription_params
      params.require(:prescription).permit(:pharmacy_location,:usage_direction,:duration)
    end
end
