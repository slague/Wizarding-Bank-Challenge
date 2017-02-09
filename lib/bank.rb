require_relative 'person'


class Bank

  # def initialize
  #   @person1 = Person.new("Minerva", 1000)
  #   @person2 = Person.new("Luna", 500)
  # end



  attr_reader :bank_name

  def initialize(bank_name)
    @bank_name = bank_name

  end

  def open_account(person)
    #The bank account is specific to an instance of a bank, but belongs to an instance of person
    #The instance of bank has a method "open_account", which gets passed the instance of person
    #Once an account is open it will have an account_balance
    #The account_balance is specific to the account, which is at a certain bank, which belongs to a person
    #Where will the account_balance start? Can an account be opened without any money?  Must there be an initial deposit amount?
  end


  def deposit(person, amount)
    #galleons is specific to an instance of Person
    #account_balance is specific to the account (which is at a specific bank and belongs to a specific person)

    if amount > @galleons
      "#{person.name} does not have enough cash to perform this deposit."
      #Is this supposed to be interpolated? How do I refer back to my instance of Person by "name"?
    else
      @galleons = @galleons - amount
      @account_balance = @account_balance + amount

      "#{amount} galleons have been deposited into #{person.name}'s  #{person.bank} account. Balance: #{@account_balance} Cash: #{@galleons}."
      #How do I get these objects to talk to one another correctly?
      #How do I get the correct instance of bank associated (people can have more than one account) with the person in this line?

    end
  end



  def withdrawl(person, amount)

    if amount > @account_balance
      "Insufficient funds."
    else
      @galleons = @galleons + amount
      @bank_account= @bank_account - amount

      "#{person.name} has withdrawn #{amount} galleons. Ballance: #{@account_balance}."
      #This method should work very similarly to "deposit"...so, same questions as above... how should the objects talk to one another?
    end
  end


  def transfer(person, bank, amount)

    if amount > @account_balance
      "Insufficient funds."
    else
    #account_balances are specific to accounts... this means things above must change

    #@account_balance_bank1 =  account_balance_from bank1 - amount
    #theotheraccountbalance = other_bank_account_balance + amount
    "#{person.name} has transfered #{amount} from #{bank} to #{bank}"
    #This needs work!
    #Questions to answer:
    #How am I keeping track of multiple bank accounts and thier different balances?-- each instance of Person can have multiple accounts with different balances... above I only have one "account_balance" instance variable. This won't work
    #In order to transfer does a person need to "open_account" with a second bank?
    #Should this be included in the method? or "cannot transfer to an unopened account?

    end
  end


  def total_cash
    #This is the total amount of money in all of the accounts at a specific bank
    #Add up account_balance for each account at a specific bank
    #look at each instance of bank that has the same "name"
    #find each account at that bank (which instances of people have accounts at this bank?)
    #add up the account_balance

  end

end




chase = Bank.new("JP Morgan Chase")
chase.open_account(person1)

wells_fargo = Bank.new("Wells Fargo")
