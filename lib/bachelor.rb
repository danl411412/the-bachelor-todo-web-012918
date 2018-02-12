require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  winner = nil
  data.each do |season_num, season_hash|
    if season == season_num
      season_hash.find do |contestants|
        if contestants["status"] == "Winner"
          winner = contestants["name"].split(" ").first
        end
      end
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  # code here
  contestant = nil
  data.each do |season_num, season_hash|
      season_hash.find do |contestants|
        if contestants["occupation"] == occupation
          contestant = contestants["name"]
        end
      end
  end
  contestant
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season_num, season_hash|
      season_hash.each do |contestants|
        if contestants["hometown"] == hometown
          count += 1
        end
      end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  occupation = nil
  data.each do |season_num, season_hash|
      season_hash.find do |contestants|
        if contestants["hometown"] == hometown
          occupation = contestants["occupation"]
        end
      end
  end
  occupation
end

def get_average_age_for_season(data, season)
  # code here
  all_ages = 0
  count = 0
  data.each do |season_num, season_hash|
    if season == season_num
      season_hash.each do |contestants|
        all_ages += contestants["age"].to_i
        count += 1
      end
    end
  end
  # binding.pry
  average_age = all_ages.to_f / count.to_f
  average_age.round
end
