


def get_first_name_of_season_winner(data, season)
  data.collect do |season_number, contestant_array|
    if season_number ==  season
      contestant_array.collect do |info|
        return info["name"].split(" ")[0]
    end
  end
end
end




def get_contestant_name(data, occupation)

data.each do |season, contestant_array|
  contestant_array.each do |info|
    return info["name"] if info["occupation"] == occupation
     end
   end
 end



def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season_number, contestant_array|
    contestant_array.each do |info|
    hometown_count += 1 if info["hometown"] == hometown
    end
  end
  hometown_count

  # code here
end

def get_occupation(data, hometown)
  data.each do |season, contestant_array|
    contestant_array.each do |info|
      return info["occupation"] if info["hometown"] == hometown
       end
     end
   end
  # code here

def get_average_age_for_season(data, season)
age_array = []
data.each do |season_number, contestant_array|
  if season_number == season
  contestant_array.each do |info|
    age_array << info["age"]
  end
end
end
age_array = age_array.collect do |age|
  age.to_f
end
average_age = (age_array.reduce(:+) / age_array.length).round
end
