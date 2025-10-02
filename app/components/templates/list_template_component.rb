class Templates::ListTemplateComponent < ApplicationComponent
  def initialize(breadcrumb:, header:, table:)
    @breadcrumb = breadcrumb
    @header = header
    @table = table
  end
end
