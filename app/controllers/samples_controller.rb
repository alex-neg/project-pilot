class SamplesController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @samples = @project.samples
  end

  def show
    @project = Project.find(params[:project_id])
    @sample = @project.samples.find(params[:id])
  end

  def new
    @project = Project.find(params[:project_id])
    @sample = @project.samples.new
  end

  def create
    @project = Project.find(params[:project_id])
    @sample = @project.samples.new(sample_params)
    if @sample.save
      redirect_to project_sample_path(@project, @sample), notice: "Sample created!"
    else
      render :new
    end
  end


  def edit
    @project = Project.find(params[:project_id])
    @sample = @project.samples.find(params[:id])
  end

  def update
    @project = Project.find(params[:project_id])
    @sample = @project.samples.find(params[:id])
    if @sample.update(sample_params)
      redirect_to project_sample_path(@project, @sample), notice: "Sample updated!"
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:project_id])
    @sample = @project.samples.find(params[:id])
    @sample.destroy
    redirect_to project_samples_path(@project), notice: "Sample deleted!"
  end

  private

  def sample_params
    params.require(:sample).permit(:name, :description, :sample_type, :photo)
  end
end
