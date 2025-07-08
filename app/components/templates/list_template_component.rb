class Templates::ListTemplateComponent < ApplicationComponent
  def initialize(table:)
    @table = table
  end

  private

  attr_reader :table
end
