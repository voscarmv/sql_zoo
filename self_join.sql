select
  count(id)
from
  stops

select
  id
from
  stops
where
  name = 'Craiglockhart'

select
  company,
  num,
  count(*)
from
  route 
where
  stop=149 or
  stop=53
group by
  company,
  num
having
  count(*) = 2

select
  a.company,
  a.num,
  a.stop,
  b.stop
from
  route a join route b on (
    a.company=b.company
    and a.num=b.num
  )
where
  a.stop=53 and
  b.stop=149


