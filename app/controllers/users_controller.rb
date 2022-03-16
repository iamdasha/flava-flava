class UsersController < ApplicationController
  def index
    @users = User.all

  end

def show

  @artists = Artist.find_by_id(params[:id])
  @collections = Collection.find_by_id(params[:id])
  @looks = Look.find_by_id(params[:id])
  @cloths = Cloth.find_by_id(params[:id])
  @user = User.find(params[:id])
  if @user
    @posts = @user.favorited_posts
    @artists = @user.artistfavorited_artists
    @collections = @user.colectfavorited_collections
    @looks = @user.lookfavorited_looks
    @cloths = @user.clothfavorited_cloths

    render actions: :show
    @favorites = @user.favorites.all
    @artistfavorites = @user.artistfavorites.all
    @colectfavorites = @user.colectfavorites.all
    @lookfavorites = @user.lookfavorites.all
    @clothfavorites = @user.clothfavorites.all

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

def lookfavorited?(look)
  lookfavorites.find_by(look_id: look.id).present?
end

def clothfavorited?(cloth)
  clothfavorites.find_by(cloth_id: cloth.id).present?
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
