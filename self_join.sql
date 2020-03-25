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
  stops.id,
  name
from
  stops join route on(
    stops.id = route.stop and
    company = 'LRT' and 
    num = 4
  )
order by
  pos

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

select
  a.company,
  a.num,
  stopa.name,
  stopb.name
from
  route a join route b on (
    a.company=b.company and a.num=b.num
  ) join stops stopa on (
    a.stop=stopa.id
  ) join stops stopb on (
    b.stop=stopb.id
  )
where
  stopa.name='Craiglockhart' and 
  stopb.name='London Road'

select
  a.company,
  a.num
from
  route a join route b on (
    a.company=b.company and
    a.num=b.num
  )
where
  a.stop=115 and
  b.stop=137
group by
  num

select
  a.company,
  a.num
from
  route a join route b on (
    a.company=b.company and a.num=b.num
  ) join stops stopa on (
    a.stop=stopa.id
  ) join stops stopb on (
    b.stop=stopb.id
  )
where
  stopa.name='Craiglockhart' and
  stopb.name='Tollcross'

select
  stopb.name,
  a.company,
  a.num
from
  route a join route b on (
    a.company=b.company and a.num=b.num
  ) join stops stopa on (
    a.stop=stopa.id
  ) join stops stopb on (
    b.stop=stopb.id
  )
where
  stopa.name='Craiglockhart'

select a.num, a.company, stopb.name, d.num, d.company
from route a join route b join route c join route d on (
  a.company=b.company and 
  a.num=b.num and

  c.company = d.company and
  c.num = d.num
  )
  join stops stopb on (b.stop=stopb.id)
where 
  a.stop = 53 and d.stop = 147 and b.stop = c.stop
order by
  a.num, stopb.name, d.num