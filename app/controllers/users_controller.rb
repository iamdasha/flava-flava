class UsersController < ApplicationController
  def index
    @users = User.all

  end

def show

  @artists = Artist.find_by_id(params[:id])
  @collections = Collection.find_by_id(params[:id])
  @user = User.find(params[:id])
  if @user
    @posts = @user.favorited_posts
    @artists = @user.artistfavorited_artists
    @collections = @user.colectfavorited_collections

    render actions: :show
    @favorites = @user.favorites.all
    @artistfavorites = @user.artistfavorites.all
    @colectfavorites = @user.colectfavorites.all

  else
      render file: 'public/404', status: 404, formats: [:html]
  end

end

def favorited?(post)
  favorites.find_by(post_id: post.id).present?
end

def artistfavorited?(artist)
  artistfavorites.find_by(artist_id: artist.id).present?
end

def user_avatar user
  if user.avatar.present?
    image_tag user.avatar_url :thumbnail
  else
    # Assuming you have a default.jpg in your assets folder
    image_tag 'avatar.svg'
  end
end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, notice: 'User deleted.'
  end

  private
  def user_params
    params.require(:user).permit(:avatar, :email, :username, :isadmin)
  end
end
