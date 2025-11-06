class SitesController < ApplicationController
  before_action :set_user
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
      redirect_to user_project_site_path(@user, @project, @site), notice: "Site created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @site = @project.sites.find(params[:id])
  end

  def update
    @site = @project.sites.find(params[:id])
    if @site.update(site_params)
      redirect_to user_project_site_path(@user, @project, @site), notice: "Site updated!"
    else
      render :edit
    end
  end

  def destroy
    @site = @project.sites.find(params[:id])
    @site.destroy
    redirect_to user_project_sites_path(@user, @project), notice: "Site deleted!"
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_project
    @project = @user.projects.find(params[:project_id])
  end

  def site_params
    params.require(:site).permit(:name, :status)
  end
end
