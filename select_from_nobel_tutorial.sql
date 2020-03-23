select
  yr,
  subject,
  winner
from
  nobel
where
  yr = 1950

select
  winner
from
  nobel
where
  yr = 1962 and
  subject = 'Literature'

select
  yr, subject
from
  nobel
where
  winner = 'Albert Einstein'

select
  winner
from
  nobel
where
  subject = 'Peace' and
  yr >= 2000

select
  *
from
  nobel
where
  subject = 'Literature' and
  yr >= 1980 and
  yr <= 1989

select
  *
from
  nobel
where
  winner in (
    'Theodore Roosevelt',
    'Woodrow Wilson',
    'Jimmy Carter',
    'Barack Obama'
  )

select
  winner
from
  nobel
where
  winner like "John%"

select
  yr,
  subject,
  winner
from
  nobel
where
  (subject = 'Physics' and yr = '1980') or
  (subject = 'Chemistry' and yr = '1984')

select
  *
from
  nobel
where 
  yr = 1980 and
  subject <> 'Chemistry' and
  subject <> 'Medicine'

select
  *
from 
  nobel
where
  (subject = 'Medicine' and yr < 1910) or
  (subject = 'Literature' and yr >= 2004)

select
  *
from
  nobel
where
  winner = 'Peter Grünberg'

select
  *
from
  nobel
where
  winner = "Eugene O'Neill"

select
  winner,
  yr,
  subject
from
  nobel
where
  winner like 'Sir%'
order by
  yr desc,
  winner

select
  winner,
  subject
from
  nobel
where
  yr = 1984
order by
  case 
    when subject in(
      'Physics',
      'Chemistry'
    )
    then 1
    else 0
  end,
  subject,
  winner