require 'date'
# month = "january"
# day = 23
# birthday = Date.parse("#{month}/#{day}")
month = "January"
monthconverter = {
    "January" => "1",
    "february" => 2,
    "march" => 3,
    "april" => 4,
    "may" => 5,
    "june" => 6,
    "july" => 7,
    "august" => 8,
    "september" => 9,
    "october" => 10,
    "november" => 11,
    "december" => 12
}
  birthday1= Date.parse("23-#{monthconverter[month]}-2021")

p birthday1
# class Birthday

#     def initialize(name, day, month)
#       @name = name
#       @day = day
#       @month = month
#     end
    
#     birthday = Date.parse("#{@month}/#{@day}")
    
#     def days_until_birthday(birthday)
#         bday = Date.new(Date.today.year, birthday.month, birthday.day)
#         p bday
#         bday = Date.new(Date.today.year, birthday.month, birthday.day) + 365  if Date.today >= bday
#         p bday
#         (bday - Date.today).to_i
#     end
#         p days_until_birthday(birthday)

# end

# birthday = Date.parse("01/23")
# def days_until_birthday(birthday)
#     bday = Date.new(Date.today.year, birthday.month, birthday.day)
#     p bday
#     bday = Date.new(Date.today.year, birthday.month, birthday.day) + 365  if Date.today >= bday
#     p bday
#     (bday - Date.today).to_i
#   end
# p days_until_birthday(birthday)


# daynow = Time.now.strftime("%d")
# monthnow = Time.now.strftime("%m")
# birthday = Time.new(2021,11,5)
# if daynow.to_i == birthday.day.to_i
#     if monthnow.to_i == birthday.month.to_i
#         puts "Happy Birthday!!"
#     end
# end

# monthhash = {1 => 31,
# 2 => 28,
# 3 => 31,
# 4 => 28,
# 5 => 31,
# 6 => 30,
# 7 => 31,
# 8 => 31,
# 9 => 30,
# 10 => 31,
# 11 => 30,
# 12 => 31
# }



# month = "january"
# month = conversionhash[month]
# p month
# month_days  = monthhash[month]
# p month_days




# if daynow.to_i < birthday.day.to_i
#  days_to_birthday =  birthday.day.to_i - daynow.to_i
# end
# if daynow.to_i > birthday.day.to_i
#    days_to_birthday = daynow.to_i - birthday.day.to_i
# end
# if birthday.month.to_i < monthnow.to_i
#  months_to_birthday =  12 - monthnow.to_i + birthday.month.to_i
# end
# if birthday.month.to_i > monthnow.to_i
#    months_to_birthday = birthday.month.to_i - monthnow.to_i
# end
# p "its #{days_to_birthday} days and #{months_to_birthday} months untill your birthday"

# conversionhash = {"january" => 1,
#     "february" => 2,
#     "march" => 3,
#     "april" => 4,
#     "may" => 5,
#     "june" => 6,
#     "july" => 7,
#     "august" => 8,
#     "september" => 9,
#     "october" => 10,
#     "november" => 11,
#     "december" => 12
#     }




# month = "january"
#     day = 05


# def month_counter(month, day)
#     conversionhash = {"january" => 1,
#         "february" => 2,
#         "march" => 3,
#         "april" => 4,
#         "may" => 5,
#         "june" => 6,
#         "july" => 7,
#         "august" => 8,
#         "september" => 9,
#         "october" => 10,
#         "november" => 11,
#         "december" => 12
#         }
#         tmonth = Time.new(2021,conversionhash[month],1).month 
#         something = Time.new(2021,conversionhash[month],day)
    
#     if Time.now.month > tmonth
#         p Time.now - something
#     else
#        p 12 - Time.now - something
#     end
# end

# p month_counter(month,day) / 60 /60 /24 /7



# count_down = day_counter(month,day).to_i / 60 /60 / 24 /7
# if count_down == 0
#     puts "Happy Birthday!!"
# else
#     puts "its #{count_down} weeks until your birthday"
# end
# p day_counter(month, day).to_i / 60 / 60 /24 /7



