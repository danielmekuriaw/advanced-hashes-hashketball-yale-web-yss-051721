# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(name)
  flag = false
  
  for i in game_hash[:home][:players]
    if i[:player_name] == name
      flag = true
      return i[:points]
    end
  end
  
  if flag == false
    for i in game_hash[:away][:players]
      if i[:player_name] == name
        flag = true
        return i[:points]
      end
    end
  end
end
  
def shoe_size(name)
  flag = false
  
  for i in game_hash[:home][:players]
    if i[:player_name] == name
      flag = true
      return i[:shoe]
    end
  end
  
  if flag == false
    for i in game_hash[:away][:players]
      if i[:player_name] == name
        return i[:shoe]
      end
    end
  end
end

def team_colors(team)
  game_hash.each{|key, value|
    if value[:team_name] == team
      return value[:colors]
    end
  }
end

def team_names
  array = []
  game_hash.each{|key, value|
    array.push(value[:team_name])}
  
  return array
end
  
def player_numbers(team)
  array = []
  game_hash.each{|key, value|
  
    if value[:team_name] == team
      value[:players].each{ |player|
      array.push(player[:number])}
    end
  }
  return array
end

def player_stats(name)
  game_hash.each{|key, value|
  
    value[:players].each{ |player|
      if player[:player_name] == name
        return player
      end
    }
  }
end

def big_shoe_rebounds
  max = 0
  max_shoe_reb = nil
  game_hash.each{|key, value|
    value[:players].each{ |player|
      if player[:shoe] > max
        max = player[:shoe]
        max_shoe_reb = player[:rebounds]
      end
    }
  }
  return max_shoe_reb
end
      
      
  
  
  
    
  