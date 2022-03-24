class LooksController < ApplicationController
  before_action :set_look, only: %i[ show edit update destroy ]

  # GET /looks or /looks.json
  def index
    @looks = Look.where(nil)
    @looks = @looks.filter_by_filtertag(params[:filtertag]) if params[:filtertag].present?

    @cloths = Cloth.find_by_id(params[:id])





  end

  # GET /looks/1 or /looks/1.json
  def show
    if @look
      @cloths = Cloth.where(look_id: @look.id)
      render actions: :show
    end

    @filtertags = Filtertag.all
    @looks = Look.all.includes(:filtertag).map do
      |look|
      look.as_json(include: [:filtertag, :image])
    end
  end

  # GET /looks/new
  def new
    @look = Look.new
  end

  # GET /looks/1/edit
  def edit
  end

  # POST /looks or /looks.json
  def create
    @look = Look.new(look_params)

    respond_to do |format|
      if @look.save
        format.html { redirect_to @look, notice: "Look was successfully created." }
        format.json { render :show, status: :created, location: @look }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @look.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /looks/1 or /looks/1.json
  def update
    respond_to do |format|
      if @look.update(look_params)
        format.html { redirect_to @look, notice: "Look was successfully updated." }
        format.json { render :show, status: :ok, location: @look }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @look.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /looks/1 or /looks/1.json
  def destroy
    @look.destroy
    respond_to do |format|
      format.html { redirect_to looks_url, notice: "Look was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_look
      @look = Look.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def look_params
      params.require(:look).permit(:title, :content, :image, :artist_id, :filtertag_id, :post_id)
    end
end
