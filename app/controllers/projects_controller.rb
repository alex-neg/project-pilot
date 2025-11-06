class ProjectsController < ApplicationController
  before_action :set_user
  before_action :set_project, only: [ :show, :edit, :update, :destroy ]

  def index
    @projects = @user.projects
  end

  def show
    @project
  end

  def new
    @project = @user.projects.new
  end

  def create
    @project = current_user.projects.new(project_params)
    if @project.save
      redirect_to user_project_path(@user, @project), notice: "Project created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @project
  end

  def update
    if @project.update(project_params)
      redirect_to user_project_path(@user, @project), notice: "Project updated!"
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to user_projects_path(@user), notice: "Project deleted!"
  end

  def set_user
    @user = current_user
  end

  def set_project
    @project = current_user.projects.find(params[:id])
  end

  def current_user
    User.first
  end

  def project_params
    params.require(:project).permit(:name, :status)
  end
end
