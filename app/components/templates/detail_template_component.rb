class Templates::DetailTemplateComponent < ApplicationComponent
  def initialize(model:, breadcrumb:, nav_buttons: [], action_buttons: [], show_picture: false, parent: nil)
    @model = model
    @breadcrumb = breadcrumb
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
      type: @model.try(:sample_type)
    }
  end

  attr_reader :model, :breadcrumb, :nav_buttons, :action_buttons, :show_picture
end
