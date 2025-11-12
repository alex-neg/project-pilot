class ExcavationUnitsController < ApplicationController
  before_action :set_project
  before_action :set_site

  def index
    @excavation_units = @site.excavation_units
  end

  def show
    @excavation_unit = @site.excavation_units.find(params[:id])
  end

  def new
    @excavation_unit = @site.excavation_units.new
  end

  def create
    @excavation_unit = @site.excavation_units.new(excavation_unit_params)
    if @excavation_unit.save
      redirect_to project_site_excavation_unit_path(@project, @site, @excavation_unit), notice: "Excavation unit created!"
    else
      redner :new, status: :unprocessable_entity
    end
  end

  def edit
    @excavation_unit = @site.excavation_units.find(params[:id])
  end

  def update
    @excavation_unit = @site.excavation_units.find(params[:id])
    if @excavation_unit.update(excavation_unit_params)
      redirect_to project_site_excavation_unit_path(@project, @site, @excavation_unit), notice: "Excavation unit updated!"
    else
      render :edit
    end
  end

  def destroy
    @excavation_unit = @site.excavation_units.find(params[:id])
    @excavation_unit.destroy
    redirect_to project_site_excavation_units_path(@project, @site), notice: "Excavation unit deleted!"
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_site
    @site = @project.sites.find(params[:site_id])
  end

  def excavation_unit_params
    params.require(:excavation_unit).permit(:name)
  end
end
