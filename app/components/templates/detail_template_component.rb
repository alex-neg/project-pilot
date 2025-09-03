class Templates::DetailTemplateComponent < ApplicationComponent
  # removing nav_buttons: [], action_buttons: []
  def initialize(model:, breadcrumb:, attributes: [], actions: [], show_picture: false, parent: nil)
    @model = model
    @breadcrumb = breadcrumb
    @attributes = attributes
    # @nav_buttons = nav_buttons
    @actions = actions
    @show_picture = show_picture
    @parent = parent
  end


  # def model_details
  #   {
  #     name: @model.name,
  #     id: @model.id,
  #     description: @model.try(:description),
  #     type: (@model.try(:sample_type) || @model.try(:find_type))&.capitalize
  #   }
  # end

  attr_reader :model, :breadcrumb, :attributes, :actions, :show_picture
end
