class ColectfavoritesController < ApplicationController
  before_action :find_collection
  before_action :find_colectfavorite, only: [:destroy]

  def create
    if already_colectfavorited?
      flash[:notice] = "You can't add to favorite more than once"
    else
      @collection.colectfavorites.create(user_id: current_user.id)
    end
    redirect_to collection_path(@collection)
  end
  def destroy
    if !(already_colectfavorited?)
      flash[:notice] = "Cannot unfavorite"
    else
      @colectfavorite.destroy
    end
    redirect_to collection_path(@collection)
  end
  private
  def already_colectfavorited?
    Colectfavorite.where(user_id: current_user.id, collection_id:
    params[:collection_id]).exists?
  end
  def find_collection
    @collection = Collection.find(params[:collection_id])
  end
  def find_colectfavorite
     @colectfavorite = @collection.colectfavorites.find(params[:id])
  end
end
