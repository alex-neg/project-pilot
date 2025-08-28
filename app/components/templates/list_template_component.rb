class Templates::ListTemplateComponent < ApplicationComponent
  def initialize(items:, title:, rows:, columns:, actions:, pagy:, action_button: nil)
    @items = items
    @title = title
    @columns = columns
    @rows = rows
    @actions = actions
    @pagy = pagy
    @action_button = action_button
  end
end
