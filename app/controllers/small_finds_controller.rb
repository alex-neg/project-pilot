class SmallFindsController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @pagy, @small_finds = pagy(@project.small_finds, limit: 5)
  end

  def show
    @project = Project.find(params[:project_id])
    @small_find = @project.small_finds.find(params[:id])
  end

  def new
    @project = Project.find(params[:project_id])
    @small_find = @project.small_finds.new
  end

  def edit
    @project = Project.find(params[:project_id])
    @small_find = @project.small_finds.find(params[:id])
  end

  def create
    @project = Project.find(params[:project_id])
    @small_find = @project.small_finds.new(small_find_params)
    if @small_find.save
      redirect_to project_sample_path(@project, @small_find), notice: "Small Find created!"
    else
      render :new
    end
  end

  def update
    @project = Project.find(params[:project_id])
    @small_find = @project.small_finds.find(params[:id])
    if @small_find.update(small_find_params)
      redirect_to project_small_find_path(@project, @small_find), notice: "Small Find updated!"
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:project_id])
    @small_find = @project.small_finds.find(params[:id])
    @small_find.destroy
    redirect_to project_small_finds_path(@project), notice: "Small Find deleted!"
  end

  private

  def small_find_params
    params.require(:small_find).permit(:name, :description, :find_type, :before_photo, :after_photo)
  end
end
