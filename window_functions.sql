select
  lastname,
  party,
  votes
from
  ge
where
  constituency = 'S14000024' and
  yr = 2017
order by
  votes desc

select
  party,
  votes,
  rank() over (
    order by
      votes desc
  ) as posn
from
  ge
where
  constituency = 'S14000024' and
  yr = 2017
order by
  party

select
  yr,
  party,
  votes,
  rank() over (
    partition by
      yr
    order by
      votes desc
  ) as posn
from
  ge
where
  constituency = 'S14000021'
order by
  party,
  yr

select
  constituency,
  party,
  votes,
  rank() over (
    partition by
      constituency
    order by
      votes desc
    ) as rank
from
  ge
where
  constituency between 'S14000021' and 'S14000026' and
  yr  = 2017
order by
  rank,
  constituency

select
  constituency,party
from
  ge outerx
where
  constituency between 'S14000021' and 'S14000026' and 
  yr  = 2017 and
  votes = (
    select
      max(votes)
    from
      ge
    where
      constituency between 'S14000021' and 'S14000026' and 
      yr  = 2017 and
      constituency = outerx.constituency
  )
order by
  constituency,votes desc

select
  party,count(1)
from
  ge outerx
where
  constituency like 'S%' and 
  yr  = 2017 and
  votes = (
    select
      max(votes)
    from
      ge
    where
      constituency like 'S%' and 
      yr  = 2017 and
      constituency = outerx.constituency
  )
group by
  party
order by
  party
  