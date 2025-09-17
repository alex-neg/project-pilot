class Templates::DetailTemplateComponent < ApplicationComponent
  def initialize(title:, items:, attributes: [], actions: [])
    @title = title
    @items = items
    @attributes = attributes
    @actions = actions
  end

  attr_reader :title, :items, :attributes, :actions
end
