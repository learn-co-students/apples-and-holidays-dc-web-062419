require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each { |holiday, supplies| 
        supplies << supply }
end

# holiday_hash[:winter][:christmas] << supply
# holiday_hash[:winter][:new_years] << supply

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end


def all_supplies_in_holidays(holiday_hash)
  
  
  
  
  ## holiday_hash.each { |season, data| 
  ##  puts season.to_s.capitalize! + ":"
  ##  data.each { |holiday, supplies|
  ##    puts " " + holiday.to_s.gsub("_"," ").split.map.join(' ')+ ": " + holiday_hash[season][holiday].flatten.join(", ")
##  }  
## }
## end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each { |season, data| 
      data.each { |holiday, supplies| 
       if supplies.include?("BBQ")
        bbq_holidays << holiday
       end
      }
  }
  bbq_holidays
end

 # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"







