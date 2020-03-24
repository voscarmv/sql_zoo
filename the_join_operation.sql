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

select
  teamname,
  sum(1)
from
  goal join eteam on(
    teamid = id
  )
group by
  teamname

select
  stadium,
  sum(1)
from
  goal join game on (
    id = matchid
  )
group by
  stadium

select
  matchid,
  mdate,
  sum(1)
from
  goal join game on 
    id = matchid
where
  team1 = 'POL' or team2 = 'POL'
group by
  matchid

select
  matchid,
  mdate,
  sum(1)
from
  goal join game on 
    id = matchid
where
  (team1 = 'GER' or team2 = 'GER') and
  teamid = 'GER'
group by
  matchid

select
  mdate,
  team1,
  sum(
    case
      when teamid = team1 then 1
      when teamid = team2 then 0
      else 0
    end
  ) score1,
  team2,
  sum(
    case
      when teamid = team1 then 0
      when teamid = team2 then 1
      else 0
    end
  ) score2
from
  game left join goal on (
    id = matchid
  )
group by
  id
order by
  mdate,
  matchid,
  team1,
  team2