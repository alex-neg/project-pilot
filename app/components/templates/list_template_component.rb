class Templates::ListTemplateComponent < ApplicationComponent
  def initialize(items:, title:, resource:, columns:, actions:, pagy:, action_button: nil)
    @items = items
    @title = title
    @columns = columns
    @resource = resource
    @actions = actions
    @pagy = pagy
    @action_button = action_button
  end
end
