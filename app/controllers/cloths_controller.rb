class ClothsController < ApplicationController
  before_action :set_cloth, only: %i[ show edit update destroy ]

  # GET /cloths or /cloths.json
  def index
    if params.has_key?(:id)
        @artist = Artist.find_by_id(params[:id])
        @cloths = Cloth.where(id: @artist)
    else
      @cloths = Cloth.all
    end

    @clothcoms = @cloths.map do |clothcom|
      clothcom.as_json(include: [:look])
    end

  end

  # GET /cloths/1 or /cloths/1.json
  def show
  end

  # GET /cloths/new
  def new
    @cloth = Cloth.new
  end

  # GET /cloths/1/edit
  def edit
  end

  # POST /cloths or /cloths.json
  def create
    @cloth = Cloth.new(cloth_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @cloth.save
        format.html { redirect_to @cloth, notice: "Cloth was successfully created." }
        format.json { render :show, status: :created, location: @cloth }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cloth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cloths/1 or /cloths/1.json
  def update
    respond_to do |format|
      if @cloth.update(cloth_params)
        format.html { redirect_to @cloth, notice: "Cloth was successfully updated." }
        format.json { render :show, status: :ok, location: @cloth }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cloth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cloths/1 or /cloths/1.json
  def destroy
    @cloth.destroy
    respond_to do |format|
      format.html { redirect_to cloths_url, notice: "Cloth was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cloth
      @cloth = Cloth.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cloth_params
      params.require(:cloth).permit(:name, :clothimage, :link, :brand_id, :look_id)
    end
end
