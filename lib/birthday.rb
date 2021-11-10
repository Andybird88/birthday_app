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
  
  def format_birthday
    Date.parse("#{@day}-#{@month}-2021") #method for this?
  end
  
  def user_birthday 
  bday = Date.new(Date.today.year, format_birthday.month, format_birthday.day) #method for this?
    
  bday = Date.new(Date.today.year, format_birthday.month, format_birthday.day) + 365 if Date.today >= bday
  end

  def count_down
   days_until_birthday = (user_birthday - Date.today).to_i
  end
  

end
