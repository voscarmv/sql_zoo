select
  sum(population)
from
  world

select
  distinct(continent)
from
  world

select
  sum(gdp)
from
  world
where
  continent = 'Africa'

select
  sum(1)
from
  world
where
  area >= 1000000

select
  sum(population)
from
  world
where
  name in (
    'Estonia',
    'Latvia',
    'Lithuania'
  )

select
  continent,
  sum(1)
from
  world
group by
  continent

select
  continent,
  sum(1)
from
  world
where
  population >= 10000000
group by
  continent

select
  continent
from
  world
group by
  continent
having
  sum(population) >= 100000000