class SitesController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @pagy, @sites = pagy(@project.sites, limit: 5)
  end

  def show
    @project = Project.find(params[:project_id])
    @site = @project.sites.find(params[:id])
  end

  def new
    @project = Project.find(params[:project_id])
    @site = @project.sites.new
  end

  def create
    @project = Project.find(params[:project_id])
    @site = @project.sites.new(site_params)
    if @site.save
      redirect_to project_site_path(@project, @site), notice: "Site created!"
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:project_id])
    @site = @project.sites.find(params[:id])
  end

  def update
    @project = Project.find(params[:project_id])
    @site = @project.sites.find(params[:id])
    if @site.update(site_params)
      redirect_to project_site_path(@project), notice: "Site updated!"
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:project_id])
    @site = @project.sites.find(params[:id])
    @site.destroy
    redirect_to project_sites_path(@project), notice: "Site deleted!"
  end

  private

  def site_params
    params.require(:site).permit(:name)
  end
end
