class DinosaursController < ApplicationController
  def index
    @dinosaurs = Dinosaur.all
  end

  def show
    @dinosaur = dinosaur.find(params[:id])
  end

  def new
    @dinosaur = Dinosaur.new
  end

  def create
    @dinosaur = Dinosaur.new(params.requie(:dinosaur).permit(:name, :age, :image_url))

    if @dinosaur.save
      redirect_to @dinosaurelse
      render "new"
    end
  end
end
