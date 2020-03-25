select
  A_STRONGLY_AGREE
from
  nss
where
  question='Q01' and
  institution='Edinburgh Napier University' and
  subject='(8) Computer Science'

select
  institution,
  subject
from
  nss
where
  score >= 100 and
  question = 'Q15'

select
  institution,
  score
from
  nss
where
  subject = '(8) Computer Science' and
  score < 50 and
  question = 'Q15'

select
 subject,
 sum(response)
from
  nss
where
  (subject = '(8) Computer Science' or
  subject = '(H) Creative Arts and Design') and
  question = 'Q22'
group by
  subject

select
  subject,
  sum((response*A_STRONGLY_AGREE)/100)
from
  nss
where
  (subject = '(8) Computer Science' or
  subject = '(H) Creative Arts and Design') and
  question = 'Q22'
group by
  subject

select
  subject,
  round(sum(response*A_STRONGLY_AGREE)/sum(response))
from
  nss
where
  (subject = '(8) Computer Science' or
  subject = '(H) Creative Arts and Design') and
  question = 'Q22'
group by
  subject

select
  institution,
  round(sum(response*score)/sum(response))
from
  nss
where
  institution like '%Manchester%' and
  question = 'Q22'
group by
  institution

select
  institution,
  sum(sample),
  sum(
    case
      when subject = '(8) Computer Science' then sample
      else 0
    end
  )
from
  nss
where
  institution like '%Manchester%' and
  question = 'Q01'
group by
  institution

