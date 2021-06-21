class ConversationsController < ApplicationController
    before_action :authenticate_user!
def index
 @users = User.all
 @conversations = Conversation.all
 end
def create
 if Conversation.between(params[:sender_id],params[:recipient_id])
   .present?
    @conversation = Conversation.between(params[:sender_id],
     params[:recipient_id]).first
 else
  @conversation = Conversation.create!(conversation_params)
 end
 redirect_to conversation_messages_path(@conversation)
end
def search 
    if params[:search].blank?  
        redirect_to(root_path, alert: "Empty field!") and return  
    else  
        @parameter = params[:search].downcase  
        @results = User.all.where("lower(name) LIKE :search", search: "%#{@parameter}%") 
    end  
end
private
 def conversation_params
  params.permit(:sender_id, :recipient_id)
 end
end
