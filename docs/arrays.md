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

2.
3.
4.
5.

## The .map method

- map transforms the data
- it builds a new array where each element is the return value of the block

--- Examples

1.
2.
3.
4.
5.
