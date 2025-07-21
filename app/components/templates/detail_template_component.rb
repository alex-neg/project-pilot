class Templates::DetailTemplateComponent < ApplicationComponent
  def initialize(project:, project_details: [], actions: [], links: [], action_button: nil)
    @project = project
    @project_details = project_details
    @actions = actions
    @links = links
    @action_button = action_button
  end

  attr_reader :project, :project_details, :actions, :links
end
