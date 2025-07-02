class ProjectsController < ApplicationController
  def index
    @projects = Projects.all
  end

  def show
    @projects = Project.find(params[:id])
  end
end
