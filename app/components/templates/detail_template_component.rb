class Templates::DetailTemplateComponent < ApplicationComponent
  def initialize(title:, breadcrumb:, attributes: [], actions: [])
    @title = title
    @breadcrumb = breadcrumb
    @attributes = attributes
    @actions = actions
  end

  attr_reader :title, :breadcrumb, :attributes, :actions
end
