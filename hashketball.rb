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

# Write code here

def num_points_scored(person)
  game_hash.each do |hash, key|
    key[:players].each do |element|
      if element[:player_name] == person
        return element[:points]
      end
    end
  end
end

def shoe_size(person)
  game_hash.each do |hash, key|
    key[:players].each do |element|
      if element[:player_name] == person
        return element[:shoe]
      end
    end
  end
end

def team_colors(string)
  game_hash.each do |hash, key|
    if key[:team_name] == string
      return key[:colors]
    end
  end
end

def team_names
  array = []
  game_hash.each do |hash, key|
    array.push(key[:team_name])
  end
  array
end

def player_numbers(team_name)
  array = []
  game_hash.each do |hash, key|
    if key[:team_name] == team_name
      key[:players].each do |player|
        array.push(player[:number])
      end
    end
  end
  array
end

def player_stats(player_string)
  hash = {}
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if player[:player_name] == player_string
        return hash = player
      end
    end
  end
end

def big_shoe_rebounds
  player_rebounds = ""
  shoe_max = -1
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if player[:shoe] > shoe_max
        shoe_max = player[:shoe]
        player_rebounds = player[:rebounds]
      end
    end
  end
  player_rebounds
end