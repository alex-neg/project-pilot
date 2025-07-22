class Templates::ListTemplateComponent < ApplicationComponent
  def initialize(breadcrumb:, title:, items:, columns:, actions:, action_button: nil)
    @breadcrumb = breadcrumb
    @title = title
    @columns = columns
    @items = items
    @actions = actions
    @action_button = action_button
  end
end
