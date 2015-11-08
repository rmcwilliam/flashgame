class DecksController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy, :update]

  def create
    @deck = Deck.new(title: params[:title],
                     user_id: current_user.id)
    if @deck.save
      render "create.json.jbuilder", status: :created
    else
      render json: { errors: @deck.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def index
    @decks = Deck.all
    render "index.json.jbuilder", status: :accepted 
  end


  def show
     @deck = Deck.find_by(id: params[:deck_id])
    render "show.json.jbuilder", status: :accepted 
  end

  def destroy
    @deck = Deck.find_by(id: params[:deck_id])
    if @deck && current_user.id == @deck.user_id
      @deck.destroy
      render json: {success: "Deck delete successful!"}, status: :accepted 
    else
      render json: { error: "Unable to delete the deck." },
             status: :unauthorized
    end
  end

  def update
   @deck = Deck.find_by(id: params[:deck_id])
   if @deck && current_user.id == @deck.user_id
     @deck.update(title: params[:title])
     render json: {success: "Title: #{@deck.title}"}, status: :accepted
   else
     render json: { error: "Unable to edit deck"}, status: :unauthorized
    end       
  end
end
