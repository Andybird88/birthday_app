require 'date'

class BirthdayCalc

    def initialize(name, day, month)
      @name = name
      @day = day
      @month = month
      monthconverter = {
        "January" => 1,
        "February" => 2,
        "March" => 3,
        "April" => 4,
        "May" => 5,
        "June" => 6,
        "July" => 7,
        "August" => 8,
        "September" => 9,
        "October" => 10,
        "November" => 11,
        "December" => 12
        
}

      monvar = monthconverter[@month]
      
      
      birthday1= Date.parse("#{@day}-#{monvar}-2021")
      #$birthday1 = Date.parse("23-1-2021")
      #p $birthday1.month

      bday = Date.new(Date.today.year, birthday1.month, birthday1.day)
        #p bday
        bday = Date.new(Date.today.year, birthday1.month, birthday1.day) + 365  if Date.today >= bday
        #p bday
        $birthday2 = (bday - Date.today).to_i
        
    
    end
   
    
    
    
    
    
    # def days_until_birthday(birthday1)
    #     bday = Date.new(Date.today.year, birthday1.month, birthday1.day)
    #     p bday
    #     bday = Date.new(Date.today.year, birthday1.month, birthday1.day) + 365  if Date.today >= bday
    #     p bday
    #     (bday - Date.today).to_i
    # end
        

end