def get_first_name_of_season_winner(data, season)
data.each do |seasons, bio|
  if seasons == season
    bio.each {|hash| return hash["name"].split(" ")[0] if hash["status"] == "Winner"}
  end
end
end

def get_contestant_name(data, occupation)
data.each do |seasons, bio|
  bio.each {|hash| return hash["name"] if hash["occupation"] == occupation}
end
end

def count_contestants_by_hometown(data, hometown)
counter = 0
data.each do |seasons, bio|
  bio.each {|hash| counter += 1 if hash["hometown"] == hometown}
end
counter
end

def get_occupation(data, hometown)
  data.each do |seasons, bio|
    bio.each {|hash| return hash["occupation"] if hash["hometown"] == hometown}
  end
end

def get_average_age_for_season(data, season)
array = []
data.each do |seasons, bio|
    bio.each {|hash| array << hash["age"]} if seasons == season
end
sum= 0.0
array.each {|x| sum += x.to_i}
average = sum/ array.size
average.round
end
