select
  game.id,
  goal.player
from
  game inner join goal
where
  game.id = goal.matchid and
  goal.teamid = 'GER'

select
  game.stadium,
  game.team1,
  game.team2
from
  game
where
  game.id = 1012

select
  player,
  teamid,
  stadium,
  mdate
from
  game join goal on (
    id=matchid and
    teamid='GER'
  )

select
  team1,
  team2,
  player
from
  game join goal on (
    id=matchid and
    player like 'Mario%'
  )

select
  player,
  teamid,
  coach,
  gtime
from
  goal join eteam on (
    goal.teamid = eteam.id and
    gtime <= 10
  )

select
  mdate,
  teamname
from
  game join eteam on (
    team1 = eteam.id and
    coach = 'Fernando Santos'
  )

select
  player
from
  goal join game on (
    goal.matchid = game.id and
    stadium = 'National Stadium, Warsaw'
  )

select
  distinct(player)
from
  game join goal on
    matchid = id 
where
  (team1='GER' or team2='GER') and
  goal.teamid <> 'GER'
