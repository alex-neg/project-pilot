class Templates::ListTemplateComponent < ApplicationComponent
  def initialize(breadcrumb:, title:, items:, columns:, actions:, pagy:, action_button: nil)
    @breadcrumb = breadcrumb
    @title = title
    @columns = columns
    @items = items
    @actions = actions
    @pagy = pagy
    @action_button = action_button
  end
end
