holiday_hash = {
      :winter => {
        :christmas => ["Lights", "Wreath"],
        :new_years => ["Party Hats"]
      },
      :summer => {
        :fourth_of_july => ["Fireworks", "BBQ"]
      },
      :fall => {
        :thanksgiving => ["Turkey"]
      },
      :spring => {
        :memorial_day => ["BBQ"]
      }
    }
    
 # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
array = []
holiday_hash.each do |key, value|
   value.each do |key, value|
      if value.any? {|item| item == "BBQ"}
        array.push(key)
      end
    end
end

puts array