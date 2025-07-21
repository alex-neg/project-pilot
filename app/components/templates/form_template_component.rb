class Templates::FormTemplateComponent < ApplicationComponent
  def initialize(model:, title:, actions: [], fields: [], show_picture: false, parent: nil)
    @model = model
    @title = title
    @actions = actions
    @fields = fields.map(&:to_sym)
    @show_picture = show_picture
    @parent = parent
  end

  attr_reader :model, :title, :actions, :fields, :show_picture
end
