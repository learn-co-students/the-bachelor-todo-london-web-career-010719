require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |person|
    return person["name"].split(" ")[0] if person["status"] == "Winner"
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_name, season_data|
    season_data.each do |person|
      return person["name"] if person["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_name, season_data|
    season_data.each do |person|
      count += 1 if person["hometown"] == hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season_name, season_data|
    season_data.each do |person|
      return person["occupation"] if person["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  count = 0
  ages_total = 0
  data.each do |season_name, season_data|
    if season_name == season
      season_data.each do |person|
        ages_total += person["age"].to_f
        count += 1
      end
    end
  end
  count != 0 ? (ages_total / count).round : nil
end
