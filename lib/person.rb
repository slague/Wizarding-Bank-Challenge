class Person

  attr_reader :name, :galleons

  attr_accessor :banks

  def initialize(name, galleons)
    @name = name
    @galleons = galleons
    @banks = {}
  end



#A person has a name
#A person has galleons
#A person can have an account
#A person can open an account at a bank
#A person can have more than one account

#Banks have different names
#Banks have accounts

#An account has a balance

#galleons can go into an account, this increases the account_balance and decreases the galleons a person has
#galleons can come out of an account, this decreases the account_balance and increases galleons a person has
#galleons can move from one account to another this changes both account_balances(increases one, decreases the other)

end

# person1 = Person.new("Minerva", 1000)
#
# person2 = Person.new("Luna", 500)
