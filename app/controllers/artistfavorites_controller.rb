
class ArtistfavoritesController < ApplicationController
  before_action :find_artist
  before_action :find_artistfavorite, only: [:destroy]

  def create
    if already_artistfavorited?
      flash[:notice] = "You can't add to artistfavorite more than once"
    else
      @artist.artistfavorites.create(user_id: current_user.id)
    end
    redirect_to artist_path(@artist)
  end
  def destroy
    if !(already_artistfavorited?)
      flash[:notice] = "Cannot unartistfavorite"
    else
      @artistfavorite.destroy
    end
    redirect_to artist_path(@artist)
  end
  private
  def already_artistfavorited?
    Artistfavorite.where(user_id: current_user.id, artist_id:
    params[:artist_id]).exists?
  end
  def find_artist
    @artist = Artist.find(params[:artist_id])
  end
  def find_artistfavorite
     @artistfavorite = @artist.artistfavorites.find(params[:id])
  end
end
