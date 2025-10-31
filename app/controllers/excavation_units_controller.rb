class ExcavationUnitsController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @site = @project.sites.find(params[:site_id])
    @excavation_units = @site.excavation_units
  end

  def show
    @project = Project.find(params[:project_id])
    @site = @project.sites.find(params[:site_id])
    @excavation_unit = @site.excavation_units.find(params[:id])
  end

  def new
    @project = Project.find(params[:project_id])
    @site = @project.sites.find(params[:site_id])
    @excavation_unit = @site.excavation_units.new
  end

  def create
    @project = Project.find(params[:project_id])
    @site = @project.sites.find(params[:site_id])
    @excavation_unit = @site.excavation_units.new

    if @excavation_unit.save
      redirect_to project_site_excavation_unit_path(@project, @site), notice: "Excavation Unit creadted!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @project = Project.find(params[:project_id])
    @site = @project.sites.find(params[:site_id])
    @excavation_unit = @site.excavation_unit.find(params[:id])
  end

  def update
    @project = Project.find(params[:project_id])
    @site - @project.sites.find(params[:site_id])
    @excavation_unit = @site.excavation_unit.find(params[:id])

    if @excavation_unit.update(excavation_unit_params)
      redirect_to project_site_excavation_unit_path(@project, @site, @excavation_unit), notice: "Excavation Unit updated!"
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:project_id])
    @site = @project.sites.find(params[:site_id])
    @excavation_unit = @site.excavation_units.find(params[:id])
    @excavation_unit.destroy
    redirect_to project_site_excavation_units_path(@project, @site), notice: "Excavation Unit deleted!"
  end

  private

  def excavation_unit_params
    params.require(:excavation_unit).permit(:name)
  end
end
