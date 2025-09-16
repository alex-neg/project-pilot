class Templates::DetailTemplateComponent < ApplicationComponent
  def initialize(model:, items:, attributes: [], actions: [], parent: nil)
    @model = model
    @items = items
    @attributes = attributes
    @actions = actions
    @parent = parent
  end

  attr_reader :model, :items, :attributes, :actions
end
