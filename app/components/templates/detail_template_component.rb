class Templates::DetailTemplateComponent < ApplicationComponent
  def initialize(model:, breadcrumb:,  model_details: [], actions: [], links: [], show_picture: false, action_button: nil, parent: nil)
    @model = model
    @breadcrumb = breadcrumb
    @model_details = model_details
    @actions = actions
    @links = links
    @action_button = action_button
    @parent = parent
    @show_picture = show_picture
  end

  attr_reader :model, :model_details, :actions, :links
end
