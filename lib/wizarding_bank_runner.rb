require './bank'
require './person'

person1 = Person.new("Minerva", 1000)
person2 = Person.new("Luna", 500)


chase = Bank.new("JP Morgan Chase")
wells_fargo = Bank.new("Wells Fargo")

chase.open_account(person1)
wells_fargo.open_account(person1)


chase.deposit(person1, 750)
chase.deposit(person1, 5000)
