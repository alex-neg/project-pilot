class Templates::ListTemplateComponent < ApplicationComponent
  def initialize(breadcrumb:, title:, table:)
    @breadcrumb = breadcrumb
    @title = title
    @table = table
  end
end
