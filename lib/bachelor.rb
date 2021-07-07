require 'pry'

def get_first_name_of_season_winner(data, season)

    data[season].each do |info_array|

        info_array.each do |stat,value|
            if value == "Winner"
                first_name = info_array["name"]
                return first_name.split(' ').first
            end
        end
    end
end


def get_contestant_name(data, occupation)
  # code here
  name = "" 
  data.each do | season, data_array|
      
  data_array.each do |info_array|
      
      info_array.each do |stat,value|
          if value == occupation
              name = info_array["name"]
              
          end
      end
    end
  end
  name

end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  
  data.each do |season, data_array|
      data_array.each do |info_array|
          info_array.each do |stat, value|
              if value == hometown
                  counter += 1
                 end
              end
          end
      end
  counter
end

def get_occupation(data, hometown)
  # code here
  first_occupation = nil
  data.each do |season, data_array|
      data_array.each do |info_array|
          info_array.each do |stat, value|
              if value == hometown
                  first_occupation ||= info_array["occupation"]
              end
          end
      end
  end
  first_occupation
end

def get_average_age_for_season(data, season)
  # code here
 
sum = 0
count = 0 
  data[season].each do |info_array|
      
      info_array.each do |stat,value|
          if stat == "age"
              sum += value.to_f
              count += 1
           
          end
         
      end
  end
  average_age = (sum/count).round
  average_age
end

