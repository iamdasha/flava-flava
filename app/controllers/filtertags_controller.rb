class FiltertagsController < ApplicationController
  before_action :set_filtertag, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /filtertags or /filtertags.json
  def index
    @filtertags = Filtertag.all
  end

  # GET /filtertags/1 or /filtertags/1.json
  def show
  end

  # GET /filtertags/new
  def new
    @filtertag = Filtertag.new
  end

  # GET /filtertags/1/edit
  def edit
  end

  # POST /filtertags or /filtertags.json
  def create
    @filtertag = Filtertag.new(filtertag_params.merge(user_id: current_user.id))
    

    respond_to do |format|
      if @filtertag.save
        format.html { redirect_to @filtertag, notice: "Filtertag was successfully created." }
        format.json { render :show, status: :created, location: @filtertag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @filtertag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filtertags/1 or /filtertags/1.json
  def update
    respond_to do |format|
      if @filtertag.update(filtertag_params)
        format.html { redirect_to @filtertag, notice: "Filtertag was successfully updated." }
        format.json { render :show, status: :ok, location: @filtertag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @filtertag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filtertags/1 or /filtertags/1.json
  def destroy
    @filtertag.destroy
    respond_to do |format|
      format.html { redirect_to filtertags_url, notice: "Filtertag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filtertag
      @filtertag = Filtertag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def filtertag_params
      params.require(:filtertag).permit(:name, :display_in_navbar)
    end
end
