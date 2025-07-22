class Templates::DetailTemplateComponent < ApplicationComponent
  def initialize(model:, model_details: [], actions: [], links: [], action_button: nil, parent: nil)
    @model = model
    @model_details = model_details
    @actions = actions
    @links = links
    @action_button = action_button
    @parent = parent
  end

  attr_reader :model, :model_details, :actions, :links
end
