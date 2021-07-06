require 'pry'

def get_first_name_of_season_winner(data, season)
  answer = ""
  data.each do |season_string, season_information|
    if season_string == season
      season_information.each do |season_selected|
        if season_selected["status"] == "Winner"
          answer = season_selected["name"].partition(" ").first
        end
      end
    end
  end
  answer
end

def get_contestant_name(data, occupation)
  answer = ""
  data.each do |season_string, season_information|
    season_information.each do |season_selected|
      if season_selected["occupation"] == occupation
        answer = season_selected["name"]
      end
    end
  end
  answer
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_string, season_information|
    season_information.each do |person_information|
      if person_information["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  answer = ""
  data.each do |season_name, season_data|
    season_data.each do |person_information|
      if person_information["hometown"] == hometown
        answer = person_information["occupation"]
        break
      end
    end
  end
  answer
end

def get_average_age_for_season(data, season)
  answer = 0
  data.each do |season_name, season_data|
    if season_name == season
      age_adder = []
      season_data.each do |person_information|
        age_adder.push(person_information["age"].to_f)
      end
      sum = 0
      length = age_adder.length
      age_adder.each do |n|
        sum += n
      end
      answer = sum / length
    end
  end
  answer.round
end
