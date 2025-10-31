class Templates::FormTemplateComponent < ApplicationComponent
  def initialize(breadcrumb:, header:, form:)
    @breadcrumb = breadcrumb
    @header = header
    @form = form
  end

  attr_reader :breadcrumb, :header, :form
end
