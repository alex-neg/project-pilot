class Templates::ListTemplateComponent < ApplicationComponent
  def initialize(items:, title:, rows:, attributes: [], pagy:, action_button: nil)
    @items = items
    @title = title
    @attributes = attributes
    @rows = rows
    @pagy = pagy
    @action_button = action_button
  end
end
