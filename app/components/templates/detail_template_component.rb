class Templates::DetailTemplateComponent < ApplicationComponent
  def initialize(project:, project_details: [], actions: [], links: [])
    @project = project
    @project_details = project_details
    @actions = actions
    @links = links
  end

  attr_reader :project, :project_details, :actions, :links
end
