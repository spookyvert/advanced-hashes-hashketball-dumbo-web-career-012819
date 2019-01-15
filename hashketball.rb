require 'pry'

def game_hash
   nested_game_hash = {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away:{
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end

# conditional to see if it is the same as the argument
def num_points_scored(player)
  game_hash.map do |key, value|
    value[:players].select do |key, value| 
      if key == player
        return value[:points]
      end
    end
  end
end


def shoe_size(player)
  game_hash.collect do |key, value|
    value[:players].select do |key, value|
      if key == player
         return value[:shoe]
      end
    end
  end
end

def team_colors(team)
  game_hash.map do |key, value|
    if value[:team_name] == team
     return value[:colors]
    end
  end
end

def team_names
  game_hash.map do |key, value|
      value[:team_name]
  end
end

#just keep making nested enumerables 
def player_numbers(team)
  game_hash.map do |key, value|
    if value[:team_name] == team
      value[:players].map do |key, value|
      value[:number]
       end
    end
  end.compact.shift
end

def player_stats(player)
  game_hash.collect do |key, value|
    value[:players].select do |key, value|
      if name == player
        return value
def player_stats(players_name)
  game_hash.collect do |key, value|
    value[:players].select do |name, stats|
      if name == players_name
        return stats
      end
    end
  end
end

def big_shoe_rebounds 
<<<<<<< HEAD
  big = 0
  r = 0 
  game_hash.collect do |key, value|
    value[:players].select do |key, value|
      if value[:shoe] > big
        big = value[:shoe] 
        r = value[:rebounds] 
      end
    end
  end
  r
=======
  biggest_shoe = 0
  rebounds = 0 
  game_hash.collect do |key, value|
    value[:players].select do |name, stats|
      if stats[:shoe] > biggest_shoe
        biggest_shoe = stats[:shoe] 
        rebounds = stats[:rebounds] 
      end
    end
  end
  rebounds
>>>>>>> 4c3a44d3443dc1316ea5fa3a889e08fa74f37d85
end


