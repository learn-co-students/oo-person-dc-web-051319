# your code goes here

class Person

  attr_reader :name, :hygiene, :happiness

  attr_accessor :bank_account
  def initialize(name)
    @name = name
    @bank_account = 25
    @hygiene = 8
    @happiness = 8
  end

  def hygiene=(hygiene)
    @hygiene = check_limit(hygiene)
  end

  def check_limit(value)
    if value > 10
      @value = 10
    elsif value < 0
      @value = 0
    else
      @value = value
    end
  end
  def happiness=(happiness)
    @happiness = check_limit(happiness)
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(salary)
    # self.bank_account = self.bank_account + salary
    self.bank_account += salary
    return "all about the benjamins"
  end


  def take_bath
    self.hygiene = self.hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"

  end

  def work_out
    self.hygiene = self.hygiene-3
    self.happiness = self.happiness+2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness = friend.happiness+3
    self.happiness= self.happiness + 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"

  end

  def start_conversation(callee, topic)
    if topic == "politics"

      callee.happiness = callee.happiness-2
      self.happiness = self.happiness-2

      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      callee.happiness = callee.happiness + 1
      self.happiness = self.happiness + 1
      return "blah blah sun blah rain"
    else

      return "blah blah blah blah blah"
    end
  end


end
