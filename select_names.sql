select
  name
from
  world
where
  name LIKE 'Y%'

select
  name
from
  world
where
  name LIKE '%y'

select
  name
from
  world
where
  name like '%x%'

select
  name
from
  world
where
  name like '%land'

select
  name
from
  world
where
  name like 'c%ia'

select
  name
from
  world
where
  name like '%oo%'

select
  name
from
  world
where
  name like '%a%a%a%'

select
  name
from
  world
where
  name like '_t%'
order by
  name

select
  name
from
  world
where
  name like '%o__o%'

select
  name
from
  world
where
  name like '____'

select
  name
from
  world
where
  capital = name

select
  name
from
  world
where
  capital = concat(name, ' city')

select
  capital, name
from
  world
where
  capital like concat('%', name, '%')

select
  capital, name
from
  world
where
  locate(name, capital) > 0 and
  name != capital

select
  name, replace(capital, name, '')
from
  world
where
  capital like concat('%', name, '%') and
  name != capital