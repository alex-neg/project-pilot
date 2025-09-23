# Classes

## A `class` is a blueprint for creating objects

- It defines what properties (variables) and behaviors (methods) an object should have
- In Ruby, everything is an object, and all objects are instances of some class

## An object is an instance of a class, it’s the actual thing created from the blueprint

## A `Module` is a Class parent in the object hierarchy. A module does not use instance methods, but `class methods`. Class methods start with `self`, and are directly called on a module.

## The instance variable @ belongs to the instance object created, not the class as a whole.

## The constructor `initialize` is used to set up an object with initial data when it's created

--- Examples

1.

```ruby
class ValidatePasswor
  def initialize(password)
        @password = password
  end

  def strong
        @password.length >= 8 &&
        @password.match?(/\d/) &&
        @password.match?(/[A-Z]/) &&
        @password.match?(/[a-z]/)
  end
end

class User
  def initialize(email, password)
        @email = email
        @password = password
  end

  def pasword_strong?
        validate = ValidatePassword.new(@password)
        validate.strong?
  end
end
```

2.

```ruby
    def drive(km_per_h)
        puts "Driving with #{km_per_h} km per hour!"
    end

    class Fuel
        attr_reader :level

        def initialize(level)
            @level = level
        end

        def empty?
            @level <= 0
        end

        def consumption
            if @level > 10
            @level -= 10
            end
        end

        def refuel(amount)
            @level += amount
            puts "Refueled with #{level} units."
        end
    end

    class Car
        def initialize(model, km_per_h, fuel_level)
            @model = model
            @km_per_h = km_per_h
            @fuel = Fuel.new(fuel_level)
        end

        def start_engine
            if @fuel.empty?
                puts "Can't start. No fuel!"
            else
                drive(@km_per_h)
                puts "Engine started!"
                @fuel.consumption
                puts "Fuel left: #{@fuel.level} units."
            end
        end

        def refuel_car(amount)
            @fuel.refuel(amount)
        end
    end

    # Usage:
    # car = Car.new("Toyota", 150, 0)
    # car.start_engine
```

3.

```ruby
    class BankAccount
        def initialize(initial_balance)
            @balance = initial_balance
        end

        def deposit(amount)
            @balance += amount
            puts "#{amount} added. New balance is: $#{@balance}"
        end

        def withdraw(amount)
            if amount > @balance
                puts "Insufficient funds."
            else
                @balance -= amount
                puts "#{amount} withdrawn. New balance is: $#{@balance}"
            end
        end

        attr_reader :balance
    end
```

4.

```ruby
class Dog
  def initialize(breed, name)
    @breed = breed
    @name = name
  end

  def food
    puts "#{@name} is a #{@breed}, and they mainly eat meat. "
  end
end

class Tommy < Dog
  def food
    puts "#{@name} is a #{@breed}, and he eats literally everything!"
  end
end
```

5.
