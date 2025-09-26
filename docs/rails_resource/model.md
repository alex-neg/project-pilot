## The model is the component from MVC which is repsonsible for handling data and business logic. 

### In a Rails app the model gets a lot of magic by inheriting form the ActiveRecord::Base superclass:
- DB querying methods (.find, .where, .create)
- ability to map to a DB table
- association helpers (has_many, belongs_to)
- validation methods (validates) Each model is mapped to a DB table. This is done automatically by Rails. Rails pluralizes the class name (class Project <  ApplicationRecord). There is a model for each resource. And the model is just a class with methods, attributes and variables inside.