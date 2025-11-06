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


class ExcavationUnitsController < ApplicationController
  before_action :set_user
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
      redirect_to user_project_site_excavation_unit_path(@user, @project, @site, @excavation_unit), notice: "Excavation unit created!"
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
      redirect_to user_project_site_excavation_unit_path(@user, @project, @site, @excavation_unit), notice: "Excavation unit updated!"
    else
      render :edit
    end
  end

  def delete
    @excavation_unit = @sites.excavation_units.find(params[:id])
    @excavation_unit.destroy
    redirect_to user_project_site_excavation_unit_path(@user, @project, @site), notice: "Excavation unit deleted!"
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_project
    @project = @user.projects.find(params[:project_id])
  end

  def set_site
    @site = @project.sites.find(params[:site_id])
  end

  def excavation_unit_params
    params.require(:excavation_unit).permit(:name)
  end
end
