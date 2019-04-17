class EventsController < ApplicationController
    #before_action :authenticate_user, except: [:index]
  
    def index
         @events=Event.all.order(date: :ASC)
    end
  
    def show  
        @event=Event.find_by(id:"#{params[:id]}")
        @comments=Comment.where(event_id:"#{params[:id]}")
        @user_data=@event.user_id  
        @user=User.find_by(id:"#{@user_data}")
        @present=Attendance.where(event_id: @event)
      
    end
  
    def new
       # @user_id = current_user.id
        @event = Event.new
    end
  
    def create  
        @event= Event.new(title: params[:title],
            description: params[:description],
            date: params[:date],
            city_id: params[:city_id],
            user_id: 2 
            )
      if @event.save
        redirect_to event_path
      else
        render new_event_path
      end
    end
  
    # def vote
    #   set_gossip
    #   if !current_user.liked? @gossip
    #     @gossip.upvote_from current_user
    #   else
    #     @gossip.downvote_from current_user
    #   end
    #   redirect_to request.referrer
  
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
  