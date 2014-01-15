class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

RPS = { "R" => "S", "P" => "R", "S" => "P" }

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless RPS.has_key?(game[0][1].upcase) && RPS.has_key?(game[1][1].upcase)
  return RPS[game[1][1].upcase] == game[0][1].upcase ? game[1] : game[0]
end


def rps_tournament_winner(tournament)
  if tournament[0][0].is_a?(Array)
    rps_tournament_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
  else
    rps_game_winner(tournament)
  end
end

# Testing winner of a single game
single_game = [ [ "Bob", "P" ], [ "Mack", "S" ] ]
puts rps_game_winner(single_game)
  
# Testing winner of the tournament !
tournament = [
                [
                  [ ["Bob", "P"], ["Mack", "S"] ],
                  [ ["Olive", "R"], ["Ben", "S"] ]
                ],
                [
                  [ ["Mathieu", "S"], ["Romain", "P"] ],
                  [ ["Wally.", "R"], ["Marty", "P"] ]
                ]
              ]
puts rps_tournament_winner(tournament)