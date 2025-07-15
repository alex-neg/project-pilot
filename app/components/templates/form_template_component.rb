# frozen_string_literal: true

class Templates::FormTemplateComponent < ApplicationComponent
  def initialize(project:, actions: [])
    @project = project
    @actions = actions
  end
end
