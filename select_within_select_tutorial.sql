select
  name
from
  world
where
  population > (
    select
      population
    from
      world
    where
      name = 'Russia'
  )

select
  name
from
  world
where
  gdp/population > (
    select
      gdp/population
    from
      world
    where
      name = 'United Kingdom'
  ) and
  continent = 'Europe'

select
  name,
  continent
from
  world
where
  continent = (
    select
      continent
    from
      world
    where
      name = 'Argentina'
  ) or
  continent = (
    select
      continent
    from
      world
    where
      name = 'Australia'
  )
order by
  name

select 
  name,
  population
from
  world
where
  population > (
    select
      population
    from
      world
    where
      name = 'Canada'
  ) and
  population < (
    select
      population
    from
      world
    where
      name = 'Poland'
  )

select
  name,
  concat(
    round(
      (population / (
        select
          population
        from
          world
        where
          name = 'Germany'
      )) * 100
    ),
    '%'
  )
from
  world
where
  continent = 'Europe'

select
  name
from
  world
where
  gdp > (
    select
      gdp
    from
      world
    where
      continent = 'Europe'
    order by
      gdp desc
    limit 1
  )

select
  continent,
  name,
  area
from
  world outerx
where
  area >= (
    select
      max(area)
    from
      world
    where
      continent = outerx.continent
  )

select
  continent,
  name
from
  world
where
  name = (
    select
      name
    from
      world
    where
      continent = 'Europe'
    order by
      name asc
    limit 1
  ) or
  name = (
    select
      name
    from
      world
    where
      continent = 'South America'
    order by
      name asc
    limit 1
  ) or
  name = (
    select
      name
    from
      world
    where
      continent = 'Africa'
    order by
      name asc
    limit 1
  ) or
  name = (
    select
      name
    from
      world
    where
      continent = 'Asia'
    order by
      name asc
    limit 1
  ) or
  name = (
    select
      name
    from
      world
    where
      continent = 'Oceania'
    order by
      name asc
    limit 1
  ) or
  name = (
    select
      name
    from
      world
    where
      continent = 'North America'
    order by
      name asc
    limit 1
  ) or
  name = (
    select
      name
    from
      world
    where
      continent = 'Eurasia'
    order by
      name asc
    limit 1
  ) or
  name = (
    select
      name
    from
      world
    where
      continent = 'Caribbean'
    order by
      name asc
    limit 1
  ) 
order by
  continent

select
  name,
  continent,
  population
from
  world outerx
where
  25000000 > (
    select
      max(population)
    from
      world
    where
      continent = outerx.continent
  )

select
  name,
  continent
from
  world outerx
where
  population > 3*(
    select
      max(population)
    from
      world
    where
      continent = outerx.continent and
      population < (
        select
          max(population)
        from
          world
        where
          continent = outerx.continent
      )
  )

