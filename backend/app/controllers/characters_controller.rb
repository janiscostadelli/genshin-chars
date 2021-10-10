class CharactersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_character, only: %i[ show update destroy ]

  # GET /characters/1
  def show
    render json: @character, status: :ok
  end

  # GET /characters
  def index
    render json: Character.all, status: :ok
  end

  # POST /characters
  def create
    @character = Character.new(character_params)

    if @character.save
      render json: @character, status: :created
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /characters/1
  def update
    if @character.update(character_params)
      render json: @character, status: :ok
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # DELETE /characters/1 or /characters/1.json
  def destroy
    @character.destroy
    render json: @character, status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def character_params
      params.require(:character).permit(:name, :age)
    end
end
