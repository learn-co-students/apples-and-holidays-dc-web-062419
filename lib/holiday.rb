require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |key, value|
    value.push(supply)
  end
  return holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash[:winter].each do |key, value|
    winter_supplies.push(value)
  end
    return winter_supplies.join(', ')
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |key, value| 
    puts "#{key.capitalize}:"
    value.each do |key, value|
      if key.to_s.include?('_')
        puts "  #{key.to_s.split('_').map(&:capitalize).join(' ')}: #{value.join(', ')}"
      else
        puts "  #{key.capitalize}: #{value.join(', ')}"
      end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each do |key, value|
     value.each do |key, value|
        if value.any? {|item| item == "BBQ"}
          array.push(key)
        end
      end
  end
  return array
end







