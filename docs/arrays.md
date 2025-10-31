# Working with Arrays

## An array is just a collection of items, stored in a specific order.

---

- Array items are indexed starting from 0
- Arrays can contain any type of object
  - integers, strings, hashes, other arrays
- Iteration, means moving through each item one at a time, starting from index 0

## The .each method

- it visits each item, one by one
- it performs the action specified in the block for each item
- this method is best for "side effects": printing, saving, modifying something outside the loop
- each does not change the original array, it always returns the original array itself

## The .map method

- map transforms the data
- it builds a new array where each element is the return value of the block

--- Examples

1.  @attributes.each do |item|
    item[:label], item[:value]
    end

    # 1. Get the totals for all pending orders. Apply a 20% tax.

    ```ruby
    orders = [
        {id: 1, total: 120, status: "pending"},
        {id: 2, total: 45, status: "shipped"},
        {id: 3, total: 200, status: "pending"},
    ]

    totals_with_tax = orders.select {|order| order[:status] == "pending"}.map {|order| order[:total] * 1.2}
    ```

2.  Calculate the sum of pages for all books.

    ```ruby
        library = {
        books: [
            {id: 1, name: "Book 1", price: 24, pages: 230},
            {id: 2, name: "Book 2", price: 25, pages: 245},
            {id: 3, name: "Book 3", price: 14, pages: 257},
            ],
            ebooks: [
            {id: 1, name: "eBook 1", price: 13, pages: 290},
            {id: 2, name: "eBook 2", price: 11, pages: 470},
            {id: 3, name: "eBook 3", price: 47, pages: 320},
            ]
        }
        total_pages = library.values.flatten.map {|item| item[:pages]}.sum
    ```

3.  Print all sites and their statuses for each project

    ```ruby
        projects = [
            {
                id: 1,
                name: "Research",
                status: "active",
                sites: [
                    { id: 101, location: "Site A", status: "active" },
                    { id: 102, location: "Site B", status: "offline" }
                ],
                samples: [
                    { id: 201, type: "rock", collected_at: "2023-05-01" },
                    { id: 202, type: "soil", collected_at: "2023-05-02" }
                ]
            },
            {
                id: 2,
                name: "Research 2",
                status: "closed",
                sites: [
                    { id: 101, location: "Site A", status: "active" },
                    { id: 102, location: "Site B", status: "closed" }
                ],
                samples: [
                    { id: 201, type: "rock", collected_at: "2023-05-01" },
                    { id: 202, type: "soil", collected_at: "2023-05-02" }
                ]
            }
        ]

        projects.each do |project|
            puts "Project: #{project[:name]}"
                project[:sites].each do |site|
                    puts "Site: #{site[:id]} at #{site[:location]} is #{site[:status]}"
            end
        end
    ```

4.  Group sites by their status (using "projects" from example 4.)

    ```ruby
        all_sites = projects.flat_map {|project| project[:sites]}

        sites_grouped_by_status = all_sites.group_by {|site| site[:status]}
    ```

5.
