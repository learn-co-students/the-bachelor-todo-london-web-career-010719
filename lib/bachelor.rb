def get_first_name_of_season_winner(data, season)
  data[season].each do |person|
    person.each do |key, value|
      if value == "Winner"
        full_name = person["name"]
        return full_name.split(" ")[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |person|
      person.each do |key, value|
        if value == occupation
          return person["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
    hometown_counter = 0
    data.each do |season, array|
      array.each do |person|
        person.each do |key, value|
          if value == hometown
            hometown_counter += 1
          end
        end
      end
    end
    hometown_counter
end

def get_occupation(data, hometown)
  hometown_arr = []
  data.each do |season, array|
    array.each do |person|
      person.each do |key, value|
        if value == hometown
          hometown_arr << person["occupation"]
        end
      end
    end
  end
  hometown_arr[0]
end

def get_average_age_for_season(data, season)
  age_total = 0
  num_of_contestants = 0
  data[season].each do |person|
    person.each do |key, value|
      num_of_contestants += 1
      age_total += person["age"].to_f
    end
  end
  (age_total / num_of_contestants).round
end
