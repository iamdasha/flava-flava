class PostsController < ApplicationController

  before_action :set_post, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /posts or /posts.json

  def index
    if params.has_key?(:filtertag)
      @filtertag = Filtertag.find_by_name(params[:filtertag])
      @posts = Post.where(filtertag: @filtertag)
    elsif params.has_key?(:id)
        @artist = Artist.find_by_id(params[:id])
        @posts = Post.where(id: @artist)
    elsif params.has_key?(:collection)
      @collection = Collection.find_by_name(params[:collection])
      @posts = Post.where(collection: @collection)
    elsif params.has_key?(:id)
        @collection = Collection.find_by_id(params[:id])
        @posts = Post.where(id: @collection)
    else
      @posts = Post.all
    end
    @looks = Look.find_by_id(params[:id])

  end

  # GET /posts/1 or /posts/1.json
  def show
    @post = Post.find(params[:id])
    # @posts = Post.all
    if @post
      @looks = Look.where(post_id: @post.id)
      render actions: :show
    end
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end


  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :content, :artist_id, :postcover, :fimage, :simage, :timage, :collection_id, :filtertag_id)
    end
end
