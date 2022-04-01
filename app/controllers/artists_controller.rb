
class ArtistsController < ApplicationController
  before_action :set_artist, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /artists or /artists.json

  def index
    # @posts = Post.all

    if params.has_key?(:brand)
      @brand = Brand.find_by_name(params[:brand])
      @artists = Artist.where(brand: @brand)
    else
      @artists = Artist.all
    end
    @posts = Post.find_by_id(params[:id])
    @artist = Artist.where(params[:artistphoto])

    @looks = Look.find_by_id(params[:id])
  end

  # GET /artists/1 or /artists/1.json
  def show
    @artist = Artist.find(params[:id])
    # @posts = Post.all
    @posts = Post.where(artist_id: @artist.id)
    @filtertags = Filtertag.all

    @posts = @posts.map do |post|
      post.as_json(include: [:filtertag, :artist])
    end

    @looks = Look.where(artist_id: @artist.id)

    @looks = @looks.map do |look|
      look.as_json(include: [:filtertag, :artist])
    end

    @artists = Artist.where(collection_id: @artist.collection_id)


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
    @artist = Artist.new(artist_params.merge(user_id: current_user.id))
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
      params.require(:artist).permit(:name, :sex, :age, :artistphoto, :collection_id, :brand_id, :genre, :instagram, :youtube, :spotify, :wiki, :style)
    end
end
