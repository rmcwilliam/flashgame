class DecksController < ApplicationController

  def create
    @deck = Deck.new(title: params[:title],
                     user_id: params[:user_id])
    if @deck.save
      render "create.json.jbuilder", status: :created
    else
      render json: { errors: @deck.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def index
  end

  def show
  end

  def destroy
    @deck = Deck.find_by(title: params[:title])
    if current_user.id && @deck.user_id(params[:user_id])
      @deck.destroy
    else
      render json: { error: "Unable to delete the deck." },
             status: :unauthorized
    end
  end

  def edit
  end

end
