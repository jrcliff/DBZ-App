class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
    
  end

  def new
    @character = Character.new
  end

  def create 
    @character = Character.create(character_params(:name, :race, :series, :power_level))
    redirect_to character_path(@character)
  end

  def edit
  end
  private
  def character_params(*args)
    params.require(:character).permit(*args)
  end
end
