class Templates::ListTemplateComponent < ApplicationComponent
  def initialize(breadcrumb:, title:, resource:, columns:, actions:, pagy:, action_button: nil)
    @breadcrumb = breadcrumb
    @title = title
    @columns = columns
    @resource = resource
    @actions = actions
    @pagy = pagy
    @action_button = action_button
  end
end
