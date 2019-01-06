def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |person_hash|
    if person_hash["status"] == "Winner"
      return person_hash["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
def get_contestant_name(data, occupation_s)
  data.each do |season, info_array|
    info_array.each do |person_hash|
      if person_hash["occupation"] == occupation_s
        return person_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
def count_contestants_by_hometown(data, hometown_s)
  from_town = []
  data.each do |season, info_array|
    info_array.each do |person_hash|
      if person_hash["hometown"] == hometown_s
        from_town << person_hash["name"]
      end
    end
  end
  from_town.count
end

def get_occupation(data, hometown)
  # code here
def get_occupation(data, hometown_s)
  first_from = []
  data.each do |season, info_array|
    info_array.each do |person_hash|
      if person_hash["hometown"] == hometown_s
        first_from << person_hash["name"]
      end

      if person_hash["name"] == first_from[0]
        return person_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data[season].each do |person_hash|
    ages << person_hash["age"].to_f
  end
  average = ages.inject {|sum, element| sum + element }.to_f / ages.size
  average.round
end
