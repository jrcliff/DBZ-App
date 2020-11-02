class CharacterTransformationsController < ApplicationController


  # def show
  #   @ct = CharacterTransformation.find(params[:id])
  # end

  def new
    @ct = CharacterTransformation.new 
  end

  def create 
    @ct = CharacterTransformation.create(ct_params)
    redirect_to character_transformation_path(@ct)

  end

  private

  def ct_params
    params.require(:character_transformation).permit(:name, :character_id, :transformation_id)
  end
end
