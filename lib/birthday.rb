# frozen_string_literal: true

require 'date'

class Birthday
  
  def initialize(name, day, month)
    @name = name
    @day = day
    @month = month
    
    monthconverter = {
      'January' => 1,
      'February' => 2,
      'March' => 3,
      'April' => 4,
      'May' => 5,
      'June' => 6,
      'July' => 7,
      'August' => 8,
      'September' => 9,
      'October' => 10,
      'November' => 11,
      'December' => 12

    }
    @month = monthconverter[@month]
  end

  def count_down
    user_birthday = Date.parse("#{@day}-#{@month}-2021") #method for this?
  
    bday = Date.new(Date.today.year, user_birthday.month, user_birthday.day)
    
    bday = Date.new(Date.today.year, user_birthday.month, user_birthday.day) + 365 if Date.today >= bday
   
    days_until_birthday = (bday - Date.today).to_i
  end
  

end
