class ContextsController < ApplicationController
  before_action :set_project
  before_action :set_site
  before_action :set_excavatin_unit

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
  end

  def destroy
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_site
    @site = @project.sites.find(params[:site_id])
  end

  def excavation_unit
    @excavation_unit = @site.excavation_units.find(params[:excavation_unit_id])
  end
end
