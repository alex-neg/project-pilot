class Templates::DetailTemplateComponent < ApplicationComponent
  def initialize(model:, items:, nav_buttons: [], action_buttons: [], show_picture: false, parent: nil)
    @model = model
    @items = items
    @nav_buttons = nav_buttons
    @action_buttons = action_buttons
    @show_picture = show_picture
    @parent = parent
  end

  def model_details
    {
      name: @model.name,
      id: @model.id,
      description: @model.try(:description),
      type: (@model.try(:sample_type) || @model.try(:find_type))&.capitalize
    }
  end

  attr_reader :model, :items, :nav_buttons, :action_buttons, :show_picture
end
