class LookfavoritesController < ApplicationController
  before_action :find_look
  before_action :find_lookfavorite, only: [:destroy]

   def create
     if already_lookfavorited?
       flash[:notice] = "You can't add to favorite more than once"
     else
       @look.lookfavorites.create(user_id: current_user.id)
     end
     redirect_to look_path(@look)
   end
   def destroy
     if !(already_lookfavorited?)
       flash[:notice] = "Cannot unfavorite"
     else
       @lookfavorite.destroy
     end
     redirect_to look_path(@look)
   end
   private
   def already_lookfavorited?
     Lookfavorite.where(user_id: current_user.id, look_id:
     params[:look_id]).exists?
   end
   def find_look
     @look = Look.find(params[:look_id])
   end
   def find_lookfavorite
      @lookfavorite = @look.lookfavorites.find(params[:id])
   end
end
