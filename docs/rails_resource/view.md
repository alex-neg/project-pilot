# The Views

- Is responsible for presentation, not logic or data manipulation.
- Gets data from the controller, not directly from the model.
- Renders the HTML (or JSON, XML, etc.) response.
- Injects dynamic content into templates using Ruby tags (<%= ... %>)
- Views do no handle user interactions logic like JS event handling

## Request --> Controller --> View --> HTML Response

1. Route call
2. he controller finds data via models
3. The controller passes instance variables to the view
4. The view renders HTML using erb templates
