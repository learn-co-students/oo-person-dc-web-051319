# your code goes here
class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    if happiness > 10
      happiness = 10
    elsif happiness < 0
      happiness = 0
    end
    @happiness = happiness
  end

  def hygiene=(hygiene)
    if hygiene > 10
      hygiene = 10
    elsif hygiene <0
      hygiene = 0
    end
    @hygiene = hygiene
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def take_bath
    self.hygiene = self.hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness= self.happiness + 2
    self.hygiene = self.hygiene - 3
    "♪ another one bites the dust ♫"
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def call_friend(friend)
    friend.happiness = friend.happiness+3
    self.happiness = self.happiness+3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness -= 2
      self.happiness -= 2
      noun1 = "partisan"
      noun2 = "lobbyist"
    elsif topic == "weather"
      person.happiness += 1
      self.happiness += 1
      noun1 = "sun"
      noun2 = "rain"
    else
      noun1 = "blah"
      noun2 = "blah"
    end
    "blah blah #{noun1} blah #{noun2}"
  end
end
