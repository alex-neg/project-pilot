class Templates::ListTemplateComponent < ApplicationComponent
  def initialize(title:, items:, columns:, actions:, action_button: nil)
    @title = title
    @columns = columns
    @items = items
    @actions = actions
    @action_button = action_button
  end
end
