class CollectionsController < ApplicationController
  before_action :set_collection, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /collections or /collections.json
  def index
    @posts = Post.find_by_id(params[:id])
    @artists = Artist.find_by_id(params[:id])
    @collections = Collection.where(nil)
    @users = User.all



  end

  # GET /collections/1 or /collections/1.json
  def show
    @acollection = Collection.find(params[:id])

    # if @collection
    #   @posts = Post.where(collection_id: @collection.id)
    #   @artists = Artist.where(collection_id: @collection.id)
    #   render actions: :show
    # end
    @posts = Post.where(collection_id: @collection.id)
    @artists = Artist.where(collection_id: @collection.id)

    @filtertags = Filtertag.all

    @posts = @posts.map do |post|
      post.as_json(include: [:filtertag, :artist, :user])
    end



  end

  # GET /collections/new
  def new
    @collection = Collection.new
  end

  # GET /collections/1/edit
  def edit
  end

  # POST /collections or /collections.json
  def create
    @collection = Collection.new(collection_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @collection.save
        format.html { redirect_to @collection, notice: "Collection was successfully created." }
        format.json { render :show, status: :created, location: @collection }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collections/1 or /collections/1.json
  def update
    respond_to do |format|
      if @collection.update(collection_params)
        format.html { redirect_to @collection, notice: "Collection was successfully updated." }
        format.json { render :show, status: :ok, location: @collection }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collections/1 or /collections/1.json
  def destroy
    @collection.destroy
    respond_to do |format|
      format.html { redirect_to collections_url, notice: "Collection was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collection
      @collection = Collection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def collection_params
      params.require(:collection).permit(:name, :cover, :description, :coverg )
    end
end
