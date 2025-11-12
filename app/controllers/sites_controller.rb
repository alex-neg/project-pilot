class SitesController < ApplicationController
  before_action :set_project

  def index
    @sites = @project.sites
  end

  def show
    @site = @project.sites.find(params[:id])
  end

  def new
    @site = @project.sites.new
  end

  def create
    @site = @project.sites.new(site_params)
    if @site.save
      redirect_to edit_project_site_path(@project, @site), notice: "Site created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    #binding.pry
    @site = @project.sites.find(params[:id])
  end

  def update
    @site = @project.sites.find(params[:id])
    if @site.update(site_params)
      redirect_to project_site_path(@project, @site), notice: "Site updated!"
    else
      render :edit
    end
  end

  def destroy
    @site = @project.sites.find(params[:id])
    @site.destroy
    redirect_to project_sites_path(@project), notice: "Site deleted!"
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def site_params
    params.require(:site).permit(:name, :status)
  end
end
