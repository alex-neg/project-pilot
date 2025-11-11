class ProjectsController < ApplicationController
  before_action :set_user
  before_action :set_project, only: [ :show, :edit, :update, :destroy ]

  def index
    @projects = Project.all
  end

  def show
    @project
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_path(@project), notice: "Project created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @project
  end

  def update
    if @project.update(project_params)
      redirect_to project_path(@project), notice: "Project updated!"
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path, notice: "Project deleted!"
  end

  def set_user
    @user = current_user
  end

  def set_project
    @project = Project.find(params[:id])
  end

  def current_user
    User.first
  end

  def project_params
    params.require(:project).permit(:name, :status)
  end
end
