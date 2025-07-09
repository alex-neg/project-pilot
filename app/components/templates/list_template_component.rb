class Templates::ListTemplateComponent < ApplicationComponent
  def initialize(header:, items:, columns:, actions:)
    @header = header
    @columns = columns
    @items = items
    @actions = actions
  end
end
