SHOW timezone;
SELECT now();
CREATE TABLE timez(ts TIMESTAMP without time zone,tsz TIMESTAMP with time zone );
INSERT into timez VALUES('2025-01-01 10:10:00','2025-01-01 10:10:00');
SELECT * FROM timez;
-- custom date and time
SELECT CURRENT_DATE;

SELECT now():: time;

SELECT to_char(now(),'ddd');

SELECT CURRENT_DATE  INTERVAL '1 year 2 month';

SELECT now() + INTERVAL '7 days';

  SELECT age (CURRENT_DATE,'02-06-2002');

  SELECT *,age(CURRENT_DATE,dob) from students;

  SELECT extract (MONTH from '2025-05-19'::date)