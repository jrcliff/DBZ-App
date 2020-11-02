class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
    @transformations = CharacterTransformation.index(params[:id]) 
    
  end

  def new
    @character = Character.new
  end

  def create 
    @character = Character.create(character_params)
    @transformation = Transformation.find(transformation_params[:transformation_id].to_i)
    @ct = CharacterTransformation.create(
      name: "#{@character.name}, #{@transformation.name}",
      character_id: @character.id, 
      transformation_id: @transformation.id)
    redirect_to character_path(@character)
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    @character.update(character_params(:name, :power_level))
  end

  private

  def character_params
    params.require(:character).permit(:name, :race, :series, :power_level)
  end

  def transformation_params
    params.require(:transformation).permit(:name, :transformation_id)
  end
end
