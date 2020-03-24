select
  id,
  title
from
  movie
where
  yr=1962

select
  yr
from
  movie
where
  title = 'Citizen Kane'

select
  id,
  title,
  yr
from
  movie
where
  title like '%Star%Trek%'
order by
  yr

select
  id
from
  actor
where
  name='Glenn Close'

select
  id
from
  movie
where
  title = 'Casablanca'

select
  name
from
  movie join actor join casting on (
    casting.movieid = movie.id and
    casting.actorid = actor.id and
    title = 'Casablanca'
  )

select
  name
from
  movie join actor join casting on (
    casting.movieid = movie.id and
    casting.actorid = actor.id and
    title = 'Alien'
  )

select
  title
from
  movie join actor join casting on (
    casting.movieid = movie.id and
    casting.actorid = actor.id and
    name = 'Harrison Ford'
  )

select
  title
from
  movie join actor join casting on (
    casting.movieid = movie.id and
    casting.actorid = actor.id and
    name = 'Harrison Ford'
  )
where
  ord <> 1

select
  title,
  name
from
  movie join actor join casting on (
    casting.movieid = movie.id and
    casting.actorid = actor.id 
  )
where
  ord = 1 and
  yr = 1962

select
  yr,
  count(1) appears
from
  movie join actor join casting on (
    casting.movieid = movie.id and
    casting.actorid = actor.id and
    name = 'Rock Hudson'
  )
group by
  yr
having
  count(1) > 2

