

class Person
  attr_accessor  :bank_account
  attr_reader :name, :happiness, :hygiene #:birth
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    # @birth = Time.now
  end

  #def bank
  #  self.bank_account = 25 + {self.}
  #end

  # attr_reader
  # def hygiene
  #   @hygiene
  # end
  # def good_clean(num)
  #   if num > 10
  #     10
  #   else
  #     num
  #   end

  # attr_writer
  def happiness=(num)

    if  num >=0 && num <=10
      @happiness = num
    elsif num < 0
      @happiness = 0
    elsif num > 10
      @happiness = 10
    end
  end

  def hygiene=(num)
    if num >=0 && num <=10
      @hygiene = num
    elsif num < 0
      @hygiene = 0
    elsif num > 10
      @hygiene = 10
    end
  end

  def happy?
    happiness > 7
  end

  def clean?
    hygiene > 7
  end

  def get_paid(salary)
    self.bank_account += salary
      return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
      return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    [friend, self].each {|o| o.happiness +=3}
    "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

  def start_conversation(person, topic)
    objects = [self, person]
    if topic == "politics"
      objects.each {|o| o.happiness -= 2}
        "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        objects.each {|o| o.happiness += 1}
          "blah blah sun blah rain"
    else
          "blah blah blah blah blah"
    end

  end
end


 # your code goes here
