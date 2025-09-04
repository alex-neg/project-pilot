# Show.html.erb

### Rails handling a request with the `show` action.

Once the Rails router intercepts a request, it first compares the URL pattern to the defined routes. When it finds a match, it determines which controller action should handle the request — in this case, the `show` action.

---

### The `show` action process:

- The `show` action creates an instance of the `Project` class by calling `Project.find(params[:id])`.
- Active Record facilitates the communication between the controller and the database.

More specifically:

- It connects to the database
- It constructs the SQL query
- It executes the query
- It maps the result to a new `Project` object, setting its attributes to match the corresponding database columns

Once all of that is done, the `ProjectsController` automatically renders the corresponding view file — `app/views/projects/show.html.erb`
