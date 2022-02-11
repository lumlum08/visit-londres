class VisitsController < ApplicationController

  before_action :set_visit, only: [:show, :edit, :update, :destroy]

  def new
    @visit = Visit.new
  end

  def index
     if params[:search].present?
      @visits = Visit.search_by_category(params[:search])
    else
      @visits = Visit.all
    end
  end

  def show

    @markers = Visit.geocoded.map do |visit|
      {
        lat: visit.latitude,
        lng: visit.longitude,
        info_window: render_to_string(partial: "info_window", locals: { visit: visit }),
        image_url: helpers.asset_url("nana.jpg")
      }
    end
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
    params.require(:visit).permit(:name, :category, :description, :location, :price, :date, :heure)
  end

end
