def get_first_name_of_season_winner(data, season)
  # code here
  season_data = data.fetch(season)
  winner_name = ""

  season_data.each do |x|
    if x["status"].downcase == "winner"
      winner_name = x["name"].split(" ")
    end
  end
  winner_name[0]
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |person|
      if person["occupation"].downcase == occupation.downcase
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, contestants|
    contestants.each do |person|
      if person["hometown"].downcase == hometown.downcase
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |person|
      if person["hometown"].downcase == hometown.downcase
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  season_data = data.fetch(season)
  average_age = 0

  season_data.each do |x|
    average_age += x["age"].to_f
  end

  average_age = average_age / season_data.length
  average_age = average_age.round
end
