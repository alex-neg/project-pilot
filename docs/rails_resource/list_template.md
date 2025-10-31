# How list_template_component.rb , list_template_component.html.erb and index.html.erb are interrelated.

```ruby
class Templates::ListTemplateComponent < ApplicationComponent
  def initialize(breadcrumb:, title:, table:)
    @breadcrumb = breadcrumb
    @title = title
    @table = table
  end
end
```

## list_template_component.rb 
This is the Component Class. It defines the logic of the component. 
class Templates::ListTemplateComponent -> namespace (::) allows nesting for classes/modules avoiding conflicts.
Templates::ListTemplateComponent means that the class ListTemplateComponent is inside the Templates module.
the initialize method 

## index.html.erb
this is the caller view file. the file which invokes the view component.
The render method calls the component class

<!-- continue -->