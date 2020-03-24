select
  name
from
  teacher
where
  dept is null

select
  teacher.name,
  dept.name
FROM
  teacher inner join dept on (
    teacher.dept=dept.id
  )

select
  teacher.name,
  dept.name
from
  teacher left join dept on (
    teacher.dept = dept.id
  )

select
  teacher.name,
  dept.name
from
  teacher right join dept on (
    teacher.dept = dept.id
  )

select
  name,
  coalesce(mobile,'07986 444 2266')
from
  teacher

select
  teacher.name,
  coalesce(dept.name, 'None')
from
  teacher left join dept on (
    teacher.dept = dept.id
  )

select
  sum(
    case
      when teacher.name is null then 0
      else 1
    end
  ) teachers,
  sum(
    case
      when teacher.mobile is null then 0
      else 1
    end
  ) phones
from
  teacher 

select
  dept.name,
  sum(
    case
      when teacher.name is null then 0
      else 1
    end
  ) teachers
from
  teacher right join dept on (
    teacher.dept = dept.id
  )
group by
  dept.id

select 
  teacher.name,
  case
    when teacher.dept = 1 then 'Sci'
    when teacher.dept = 2 then 'Sci'
    else 'Art'
  end
from
  teacher

select 
  teacher.name,
  case
    when teacher.dept = 1 then 'Sci'
    when teacher.dept = 2 then 'Sci'
    when teacher.dept = 3 then 'Art'
    else 'None'
  end
from
  teacher