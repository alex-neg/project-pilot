require 'ostruct'

path_proc = proc { |smth| puts smth }

# JavaScript Equivalent
# const path_proc = (smth) => { console.log(smth) }

# path_proc.call('yo')

# project = OpenStruct.new(id: 1, name: "project 1")

# puts project.id # Outputs: 1
# puts project.name # Outputs: project 1


projects = [
  OpenStruct.new(id: 1, name: "project 1"),
  OpenStruct.new(id: 2, name: "project 3"),
]

table = 
  {
    items: projects,
    columns: [
      {
        label: 'ID',
        accessor: :id
      },
      {
        label: 'Name',
        accessor: :name
      }
    ],
    actions: [
      {
        label: "View",
        path_proc: proc { |project| project_path(project) }
      }
    ]
  }

# table[:items]

# For every project, we want to ouptut "ID: 1, NAME: project 1"

# 1. Acess the items -> table[:items]
# 2. use each to iterate

table[:items].each do |project|
  # puts "ID: #{item.id}, NAME: #{item.name}"

  table[:columns].each do |col|
    method = col[:accessor]

    value = project.send(method)

    puts value
  end
end



# # How .send works
# project = OpenStruct.new(id: 1, name: "project 1")

# project.id
# project.name

# puts "Project attributes accessed with .send"
# puts project.send(:id)
# puts project.send(:name)


# Javascript
# key = 'cool'
#
# object[key]