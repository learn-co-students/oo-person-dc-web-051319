# your code goes here
#rspec --f-f
class Person
    attr_reader :name, :happiness, :hygiene, :happiness
    attr_accessor :bank_account

    MIN = 0
    MAX = 10

    #to correct the range if out of range
    def correct_range(num)
        if num > MAX
            num = MAX
        elsif num < MIN
            num = MIN
        else
            return num
        end
    end

    #initialize the person
    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = correct_range(happiness)
        @hygiene = correct_range(hygiene)
    end

    #check if user is clean
    def clean?
        self.hygiene > 7
    end

    #check if user is happy
    def happy?
        self.happiness > 7
    end

    #setter for happiness
    def happiness=(num)
        @happiness = correct_range(num)
    end

    #setter for hygiene
    def hygiene=(num)
        @hygiene = correct_range(num)
    end

    #increase the money of the person
    def get_paid(num)
        self.bank_account += num
        return "all about the benjamins"
    end

    #increase the hygiene of the person
    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return  "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)

        case topic
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end







    




end

# get paid/receive payments
# take a bath
# call a friend
# start a conversation
# state if they are happy and/or clean