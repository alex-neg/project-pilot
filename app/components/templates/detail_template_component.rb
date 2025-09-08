class Templates::DetailTemplateComponent < ApplicationComponent
  def initialize(model:, items:, attributes: [], actions: [], show_picture: false, parent: nil)
    @model = model
    @items = items
    @attributes = attributes
    @actions = actions
    @show_picture = show_picture
    @parent = parent
  end

  attr_reader :model, :items, :attributes, :actions, :show_picture
end
