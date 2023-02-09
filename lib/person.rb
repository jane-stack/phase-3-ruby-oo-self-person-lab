# your code goes here
# instance method : requires an object of it's class to be created before it can be called -- teaching our dog to bark => 
    # def bark
    #  puts "Woof!"
    # end
    # fido = Dog.new
    # fido.bark
# class method : Methods defined inside the class
    # Dog.new to create a new instance of the class which then calls the instance method ClassName#initialize
# Instances of Classes: fido = Dog.new => instantiate a new instance of a new dog. => different instances are different Objects
# Instance Variables : @symbol => Bound to an instance of a class. Holds info about an instance and called on throughout the class w/o the need to be passed into other methods as arguments.
require 'pry'
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        @happiness = 
        if value > 10
            10
        elsif value < 0
            0
        else
            value
        end
    end

    def hygiene=(value)
        @hygiene =
        if value > 10
            10
        elsif value < 0
            0
        else
            value
        end
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        if self.hygiene > 10
            10
        else
            self.hygiene += 4
            "♪ Rub-a-dub just relaxing in the tub ♫"
        end
    end

    def work_out
        if self.hygiene < 0
            0
        elsif self.happiness > 10
            10
        else
            self.hygiene -= 3
            self.happiness += 2
            '♪ another one bites the dust ♫'
        end
    end

    def call_friend(friend)
        if self.happiness > 10 || friend.happiness > 10
            10
        else
            self.happiness += 3
            friend.happiness += 3
            "Hi #{friend.name}! It's #{self.name}. How are you?"
        end
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end

end

jane = Person.new('Jane')
jimmy = Person.new('Jimmy')
sylvie = Person.new('Sylvie')
binding.pry