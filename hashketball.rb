require 'pry'
# Write your code here!
def game_hash()
stats_hash = {:home => {
              :team_name => "Brooklyn Nets" ,
              :colors => ["Black", "White"],
              :players => [{:player_name =>"Alan Anderson",
                            :number => 0 ,
                            :shoe => 16 ,
                            :points => 22 ,
                            :rebounds => 12 ,
                            :assists => 12 ,
                            :steals => 3 ,
                            :blocks => 1 ,
                            :slam_dunks => 1 ,
              },
                          {:player_name =>"Reggie Evans",
                            :number => 30 ,
                            :shoe => 14 ,
                            :points => 12 ,
                            :rebounds => 12 ,
                            :assists => 12 ,
                            :steals => 12 ,
                            :blocks => 12 ,
                            :slam_dunks => 7 ,
                
              }, 
                          {:player_name =>"Brook Lopez",
                            :number => 11 ,
                            :shoe => 17 ,
                            :points => 17 ,
                            :rebounds => 19 ,
                            :assists => 10 ,
                            :steals => 3 ,
                            :blocks => 1 ,
                            :slam_dunks => 15 ,
                
              },
                          {:player_name =>"Mason Plumlee",
                            :number => 1 ,
                            :shoe => 19 ,
                            :points => 26 ,
                            :rebounds => 11 ,
                            :assists => 6 ,
                            :steals => 3 ,
                            :blocks => 8 ,
                            :slam_dunks => 5 ,
                
              },
                          {:player_name =>"Jason Terry",
                            :number => 31 ,
                            :shoe => 15 ,
                            :points => 19 ,
                            :rebounds => 2 ,
                            :assists => 2 ,
                            :steals => 4 ,
                            :blocks => 11 ,
                            :slam_dunks => 1
                
              }]
}, 
            :away => {
              :team_name => "Charlotte Hornets" ,
              :colors => ["Turquoise, Purple"] ,
              :players => [{:player_name =>"Jeff Adrien",
                            :number => 4 ,
                            :shoe => 18 ,
                            :points => 10 ,
                            :rebounds => 1 ,
                            :assists => 1 ,
                            :steals => 2 ,
                            :blocks => 7 ,
                            :slam_dunks => 2 ,
            
              }, 
                            {:player_name =>"Bismack Biyombo",
                            :number => 0 ,
                            :shoe => 16 ,
                            :points => 12 ,
                            :rebounds => 4 ,
                            :assists => 7 ,
                            :steals => 22 ,
                            :blocks => 15 ,
                            :slam_dunks => 10 ,
                
              },
                            {:player_name =>"DeSagna Diop",
                            :number => 2 ,
                            :shoe => 14 ,
                            :points => 24 ,
                            :rebounds => 12 ,
                            :assists => 12 ,
                            :steals => 4 ,
                            :blocks => 5 ,
                            :slam_dunks => 5 ,
                
              },
                            {:player_name =>"Ben Gordon",
                            :number => 8 ,
                            :shoe => 15 ,
                            :points => 33 ,
                            :rebounds => 3 ,
                            :assists => 2 ,
                            :steals => 1 ,
                            :blocks => 1 ,
                            :slam_dunks => 0 ,
                
              },
                            {:player_name =>"Kemba Walker",
                            :number => 33 ,
                            :shoe => 15 ,
                            :points => 6 ,
                            :rebounds => 12 ,
                            :assists => 12 ,
                            :steals => 7 ,
                            :blocks => 5 ,
                            :slam_dunks => 12 ,
                
              }]
            }



}

end


def num_points_scored(name)
  stats_hash = game_hash
  stats_hash.each do |location, info| 
    info.each do |attribute, stuff| 
      if stuff.include?(name)
       return stats_hash[location][attribute][name][:points]
      end
    end
  end
end

def team_names
  stats_hash = game_hash
  arr = Array.new
  stats_hash.each do |thing, details|
    details.each do |attribute, info|
      if attribute == :team_name
        arr << info
      end
    end
  end
  return arr
end

def team_colors(team_name)
  stats_hash = game_hash
  arr = Array.new
  stats_hash.each do |thing, details|
    if stats_hash[thing].values.include?(team_name)
      details.each do |attribute, info|
        if attribute == :colors
          return info
        end
      end
    end
  end
end

def player_numbers(team_name)
  stats_hash = game_hash
  arr = Array.new
  stats_hash.each do |thing, details|
    if stats_hash[thing].values.include?(team_name)
      details.each do |attribute, info|
        if info.class == Hash
          info.each do |player, stats|
            stats.each do |stat, int|
              if stat == :number
                arr << int.to_i
              end
            end
          end
        end
      end
    end
  end
  return arr
end

def player_stats(name)
  stats_hash = game_hash
  stats_hash.each do |location, attributes| 
    attributes.each do |attribute, info| 
      if info.include?(name) 
       return stats_hash[location][attribute][name]
      end
    end
  end
end


def big_shoe_rebounds
  stats_hash = game_hash
  player_name = ""
  shoe_size = 0
  stats_hash.each do |location, attributes|
    attributes.each do |attribute, info|
      if info.class == Hash
        info.each do |player, stats|
            stats.each do |stat, int|
              if stat == :shoe
                if int > shoe_size
                  shoe_size = int
                  player_name = player
                end
              end
            end
          end
        return stats_hash[location][attribute][player_name][:rebounds]
      end
    end
  end
end






#def num_points_scored(players_name)



#end

 #stats_hash = game_hash
  #i = 0
  #points = 0
  #while i < stats_hash.length do
  # points = stats_hash[:home][:players]
   #i += 1
  #end
  #points

#def biggest_shoe(h)
 
#end
