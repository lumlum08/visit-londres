class VisitsController < ApplicationController

  before_action :set_visit, only: [:show, :edit, :update, :destroy]

  def new
    @visit = Visit.new
  end

  def index
    @visits = Visit.all
  end

  def show
  end

  def edit
  end

  def create
    @visit = Visit.new(visit_params)
    if @visit.save
      redirect_to visit_path(@visit)
    else
      render :new
    end
  end

  def update
    if @visit.update(visit_params)
      redirect_to visit_path(@visit)
    else
      render :edit
    end
  end

  def destroy
    @visit.destroy
    redirect_to profil_path
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_visit
    @visit = Visit.find(params[:id])
  end

    # Only allow a list of trusted parameters through.
  def visit_params
    params.require(:visit).permit(:name, :description, :location, :price, :date, :heure)
  end

end
