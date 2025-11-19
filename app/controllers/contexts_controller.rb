class ContextsController < ApplicationController
  before_action :set_project
  before_action :set_site
  before_action :set_excavation_unit

  def index
    @contexts = @excavation_unit.contexts
  end

  def show
    @context = @excavation_unit.contexts.find(params[:id])
  end

  def new
    @context = @excavation_unit.contexts.new
  end

  def create
    @context = @excavation_unit.contexts.new(context_params)
    @context.recorded_by = User.first.id
    if @context.save
      redirect_to project_site_excavation_unit_context.path(@project, @site, @excavation_unit, @context), notice: "Context created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @context = @excavation_unit.contexts.find(params[:id])
  end

  def update
    @context = @excavation_unit.contexts.find(params[:id])
    if @context.update(context_params)
      redirect_to project_site_excavation_unit_context_path(@project, @site, @excavation_unit, @context), notice: "Context updated!"
    else
      render :edit
    end
  end

  def destroy
    @context = @excavation_unit.contexts.find(params[:id])
    @context.destroy
    redirect_to project_site_excavation_unit_contexts_path(@project, @site, @excavation_unit)
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_site
    @site = @project.sites.find(params[:site_id])
  end

  def set_excavation_unit
    @excavation_unit = @site.excavation_units.find(params[:excavation_unit_id])
  end

  def context_params
    params.require(:context).permit()
  end
end
