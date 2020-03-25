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

select
  t.title,
  name
from
  actor join casting join (
    select
      movieid,
      title
    from
      movie join actor join casting on (
        casting.movieid = movie.id and
        casting.actorid = actor.id and
        name = 'Julie Andrews'
      )
    group by
      movieid
  ) t on (
    casting.movieid = t.movieid and
    casting.actorid = actor.id 
  )
where
  ord = 1

select
  name
from
  actor join casting on (
    actor.id = actorid and
    ord = 1
  )
group by
  name
having
  count(1) >= 15
order by
  name

select
  title, sum(1)
from
  movie join casting on (
    movie.id = movieid 
  )
where
  yr = 1978
group by
  movieid
order by
  sum(1) desc,
  title

select
  distinct(name)
from
  movie join casting on (
    movie.id = movieid
  ) join actor on(
    actor.id = actorid
  )
where
  movie.id in (
    select
      movieid
    from
      casting
    where
      actorid in (
        select
          id
        from
          actor
        where
          name = 'Art Garfunkel'
      )
  ) and
  name <> 'Art Garfunkel'

