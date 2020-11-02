class TransformationsController < ApplicationController
  def index
    @transformations = Transformation.all
  end

  def show
    @transformation = Transformation.find(params[:id])
  end

  def new
    @transformation = Transformation.new
  end

  def create
    @transformation = Transformation.create(transformation_params)
    redirect_to transformation_path(@transformation)
  end

  private

  def transformation_params
    params.require(:transformation).permit(:name, :required_transformations)
  end
end
