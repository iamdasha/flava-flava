class ArtistsController < ApplicationController
  before_action :set_artist, only: %i[ show edit update destroy ]

  # GET /artists or /artists.json
  def index
    # @posts = Post.all

    if params.has_key?(:filtertag)
      @filtertag = Filtertag.find_by_name(params[:filtertag])
      @artists = Artist.where(filtertag: @filtertag)
    elsif params.has_key?(:style)
      @style = Style.find_by_name(params[:style])
      @artists = Artist.where(style: @style)
    elsif params.has_key?(:brand)
      @brand = Brand.find_by_name(params[:brand])
      @artists = Artist.where(brand: @brand)
    else
      @artists = Artist.all
    end
    @posts = Post.find_by_id(params[:id])
    @cloths = Cloth.find_by_id(params[:id])
  end

  # GET /artists/1 or /artists/1.json
  def show
    @artist = Artist.find(params[:id])
    # @posts = Post.all
    if @artist
      @posts = Post.where(artist_id: @artist.id)
      @cloths = Cloth.where(artist_id: @artist.id)
      render actions: :show
    end

  
  end

  # GET /artists/new
  def new
    @artist = Artist.new
  end

  # GET /artists/1/edit
  def edit
  end

  # POST /artists or /artists.json
  def create
    @artist = Artist.new(artist_params)

    respond_to do |format|
      if @artist.save
        format.html { redirect_to @artist, notice: "Artist was successfully created." }
        format.json { render :show, status: :created, location: @artist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artists/1 or /artists/1.json
  def update
    respond_to do |format|
      if @artist.update(artist_params)
        format.html { redirect_to @artist, notice: "Artist was successfully updated." }
        format.json { render :show, status: :ok, location: @artist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artists/1 or /artists/1.json
  def destroy
    @artist.destroy
    respond_to do |format|
      format.html { redirect_to artists_url, notice: "Artist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
      @artist = Artist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artist_params
      params.require(:artist).permit(:name, :sex, :age, :artistphoto, :filtertag_id, :style_id, :brand_id)
    end
end
