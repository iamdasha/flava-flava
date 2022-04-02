
class ClothfavoritesController < ApplicationController
  before_action :find_cloth
  before_action :find_clothfavorite, only: [:destroy]

   def create
     if already_clothfavorited?
       flash[:notice] = "You can't add to favorite more than once"
     else
       @cloth.clothfavorites.create(user_id: current_user.id)
     end
     redirect_to cloth_path(@cloth)
   end
   def destroy
     if !(already_clothfavorited?)
       flash[:notice] = "Cannot unfavorite"
     else
       @clothfavorite.destroy
     end
     redirect_to cloth_path(@cloth)
   end
   private
   def already_clothfavorited?
     Clothfavorite.where(user_id: current_user.id, cloth_id:
     params[:cloth_id]).exists?
   end
   def find_cloth
     @cloth = Cloth.find(params[:cloth_id])
   end
   def find_clothfavorite
      @clothfavorite = @cloth.clothfavorites.find(params[:id])
   end
end
