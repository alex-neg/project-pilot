1 How does the "index" action works? 
2 Section for update action.
3 Section for edit
4 describe the controller also

# Controller
A controller is the bridge handling relations between the model and the views.
The controller takes user input (via routes/HTTP requests), gets or updates data via the model, and renders a view.
The main CRUD actions that correspond to the main HTTP requests.
index, show, new, edit -> GET
create -> POST
update - > PATCH
destroy -> DELETE

# How does the "index" action works? 
The index action specifically corresponds to a GET request. 
It's basically a method that uses Active Record's built-in method .all to retrieve a list of elements, usually from the model.

# "Update" action
The update action is a method inside the controller class, and it corresponds to a PATCH HTTP request. It's triggered when the user submits a form to update an existing record.
It is accessing the model using the Active Record method find, which look for a specific record and takes an id as argument through the params hash
However, the params[:id] is passed from the URL not directlu from the parasm hash. 
The params hash is a built-in part of Rails request-response cycle.
Then, a check is performed: if @project.update(project_params), and if passed the @project object is updated with the new values from the form provided by the project_params method.
The update mwthod will try to save the changes for the record. WIll return true if successfull. If fails the else block is executed which renders the edit action.
- redirect_to @project, notice: "Project updated!"
redirect_to is a Rails helper that redirects the browser to a new URL instead of rendering a view
In this case it redirect directly to the show page for the newly created project.

# "Edit" action
Triggered by a GET request.
It uses the ActiveRecord method "find" with a params[:id] argument in order to retrieve a specific item from the database.
It then makes the current vlaues available in an edit form.
