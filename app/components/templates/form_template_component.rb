# frozen_string_literal: true

class FormTemplateComponent < ApplicationComponent
  def initialize(project:, actions: [])
    @project = project
    @actions = actions
  end
end
