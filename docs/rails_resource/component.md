# The View Component Layer

- ViewComponent is a framework for building, organizing, and reusing view logic in Rails - especially when the UI is getting repetitive. ViewComponent encapsulates the UI into Ruby classes.
- A ViewComponent resource is build form a Ruby class, and a html.erb template
- The class defines the instance variables which are fired into the model.
- The Views acts as the caller. Then the UI gets rendered through the VIewCOmponenet template.

### The ViewComponent class deifnes instance variables. The main Rails View acts as the caller and renders the ViewComponent, passing in any necessary data. Then the UI gets rendered through the ViewComponent template.
