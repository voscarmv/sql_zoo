select
  population
from
  world
where
  name = 'Germany'

select
  name, population
from
  world
where
  name IN ('Sweden', 'Norway', 'Denmark')

select
  name, area
from
  world
where
  area BETWEEN 200000 AND 250000
