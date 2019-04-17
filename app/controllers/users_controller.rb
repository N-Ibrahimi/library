class UsersController < ApplicationController
    #before_action :authenticate_user, except: [:index]
  
    def index
    end
  
    def show 
        @user=User.find(params[:id])
        @events=Event.where(user_id:"#{params[:id]}")
    end
  
    def new

        puts params 
        
        #@new_user=Users.new()

    end
  
    def create  # Fonction appelée lors de la création d'un gossip.
    #   @new_gossip = Gossip.new(user_id: current_user.id, title: params['gossip_title'], content: params['gossip_content'])
  
    #   if @new_gossip.save
    #     redirect_to gossips_path
    #   else
    #     render new_gossip_path
    #   end
    # end
  
    # def vote
    #   set_gossip
    #   if !current_user.liked? @gossip
    #     @gossip.upvote_from current_user
    #   else
    #     @gossip.downvote_from current_user
    #   end
    #   redirect_to request.referrer
     end
  
    def edit  # Pour custom ton histoire, direction le salon de l'edit. De quoi te rappeler tes week-ends tuning avec Jackie et sa super dedeuch tunée à souhait !
      #set_gossip
    end
  
    def update  # Une fois que tu as choisi quoi tuner, on y met un ptit coup de polish.
    #   set_gossip
    #   gossip_params = params.require(:gossip).permit(:title, :content)
    #   @gossip.update(gossip_params)
    #   redirect_to gossip_path
    end
  
    def destroy # Suppresion d'un gossip. Mieux qu'un rollback.
    #   set_gossip
    #   @gossip.destroy
    #   redirect_to gossips_path
    end
end
  
    # private
  
#     def set_gossip
#       @gossip = Gossip.find(params[:id])
#     end
#   end
  