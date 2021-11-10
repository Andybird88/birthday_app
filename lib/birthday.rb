# frozen_string_literal: true

require 'date'

class Birthday
  def initialize(name, day, month)
    @name = name
    @day = day
    @month = month
  end

  def convert_month
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
    Date.parse("#{@day}-#{@month}-2021")
  end

  def user_birthday
    bday = Date.new(Date.today.year, format_birthday.month, format_birthday.day)

    if Date.today >= bday
      Date.new(Date.today.year, format_birthday.month, format_birthday.day) + 365
    else
      bday
    end
  end

  def count_down
    (user_birthday - Date.today).to_i
  end
end
