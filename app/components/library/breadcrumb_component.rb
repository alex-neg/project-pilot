class Library::BreadcrumbComponent < ApplicationComponent
  def initialize(breadcrumb:)
    @breadcrumb = breadcrumb
  end

  attr_reader :breadcrumb
end
