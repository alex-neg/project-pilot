class SmallFindsController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @small_finds = @project.small_finds
  end

  def show
  end

  def new
    @project = Project.find(params[:project_id])
    @small_find = @project.small_finds.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
