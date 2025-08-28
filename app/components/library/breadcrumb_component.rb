class Library::BreadcrumbComponent < ApplicationComponent
  def initialize(items:)
    @items = items
  end
end
