# your code goes hereclass
class Person
    attr_accessor :bank_account, :happiness, :hygeine
    attr_reader :name

    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygeine = 8
    end

    # def clean?
    #   if @hygeine > 7
    #     puts true
    #   else puts false
    #   end
    # end
    # def happy?
    #   if @happiness> 7
    #     puts true
    #   else puts false
    #   end
    # end
end
