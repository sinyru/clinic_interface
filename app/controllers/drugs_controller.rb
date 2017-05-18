class DrugsController < ProtectedController
  before_action :set_drug, only: [:show, :update, :destroy]

  # GET /drugs
  def index
    @drugs = current_user.drugs

    render json: @drugs
  end

  # GET /drugs/1
  def show
    render json: @drug
  end

  # POST /drugs
  def create
    @drug = current_user.drugs.build(drug_params)

    if @drug.save
      render json: @drug, status: :created, location: @drug
    else
      render json: @drug.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /drugs/1
  def update
    if @drug.update(drug_params)
      render json: @drug
    else
      render json: @drug.errors, status: :unprocessable_entity
    end
  end

  # DELETE /drugs/1
  def destroy
    @drug.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drug
      @drug = current_user.drugs.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def drug_params
      params.require(:drug).permit(:name,:description)
    end
end
