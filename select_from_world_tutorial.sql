SELECT name, continent, population FROM world

select
  name
from
  world
where
  population >= 200000000

select
  name,
  gdp/population
from
  world
where
  population >= 200000000

select
  name,
  population/1000000
from
  world
where
  continent = 'South America'
  
select
  name,
  population
from
  world
where
  name in('France', 'Germany', 'Italy');

select
  name
from
  world
where
  name like '%United%'

select
  name,
  population,
  area
from
  world
where
  population > 250000000 or
  area > 3000000

select
  name,
  population,
  area
from
  world
where
  area > 3000000 xor
  population > 250000000

select
  name,
  round(population/1000000, 2),
  round(gdp/1000000000, 2)
from
  world
where
  continent = 'South America'

select
  name,
  round((gdp/population)/1000)*1000
from
  world
where
  gdp >= 1000000000000

select
  name,
  capital
from
  world
where
  length(name) = length(capital)

select
  name,
  capital
from
  world
where
  left(name, 1) = left(capital, 1) and
  name <> capital

select
  name
from
  world
where
  name like '%a%' and
  name like '%e%' and
  name like '%i%' and
  name like '%o%' and
  name like '%u%' and
  name not like '% %'
