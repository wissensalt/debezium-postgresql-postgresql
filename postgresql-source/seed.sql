INSERT INTO public.resigned_employee (id, employee_name, department_name, phone_no, salary, created_at, onboard_at,
                                      offboard_at)
VALUES (DEFAULT,
        'Jono',
        'Finance',
        (SELECT format('(%s%s%s) %s%s%s-%s%s%s%s'
                    , a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10])
         FROM (
                  SELECT ARRAY(
                                 SELECT trunc(random() * 10)::int
                                 FROM generate_series(1, 10)
                             ) AS a
              ) sub),
        (SELECT floor(random() * 10000000)::int),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2020-01-01 00:00:00' + random() * (now() - timestamp '2019-01-01 00:00:00')));

INSERT INTO public.resigned_employee (id, employee_name, department_name, phone_no, salary, created_at, onboard_at,
                                      offboard_at)
VALUES (DEFAULT,
        'Jira',
        'Finance',
        (SELECT format('(%s%s%s) %s%s%s-%s%s%s%s'
                    , a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10])
         FROM (
                  SELECT ARRAY(
                                 SELECT trunc(random() * 10)::int
                                 FROM generate_series(1, 10)
                             ) AS a
              ) sub),
        (SELECT floor(random() * 10000000)::int),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2020-01-01 00:00:00' + random() * (now() - timestamp '2019-01-01 00:00:00')));

INSERT INTO public.resigned_employee (id, employee_name, department_name, phone_no, salary, created_at, onboard_at,
                                      offboard_at)
VALUES (DEFAULT,
        'Bill',
        'Engineer',
        (SELECT format('(%s%s%s) %s%s%s-%s%s%s%s'
                    , a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10])
         FROM (
                  SELECT ARRAY(
                                 SELECT trunc(random() * 10)::int
                                 FROM generate_series(1, 10)
                             ) AS a
              ) sub),
        (SELECT floor(random() * 10000000)::int),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2020-01-01 00:00:00' + random() * (now() - timestamp '2019-01-01 00:00:00')));

INSERT INTO public.resigned_employee (id, employee_name, department_name, phone_no, salary, created_at, onboard_at,
                                      offboard_at)
VALUES (DEFAULT,
        'Smith',
        'Engineer',
        (SELECT format('(%s%s%s) %s%s%s-%s%s%s%s'
                    , a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10])
         FROM (
                  SELECT ARRAY(
                                 SELECT trunc(random() * 10)::int
                                 FROM generate_series(1, 10)
                             ) AS a
              ) sub),
        (SELECT floor(random() * 10000000)::int),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2020-01-01 00:00:00' + random() * (now() - timestamp '2019-01-01 00:00:00')));

INSERT INTO public.resigned_employee (id, employee_name, department_name, phone_no, salary, created_at, onboard_at,
                                      offboard_at)
VALUES (DEFAULT,
        'Frank',
        'HR',
        (SELECT format('(%s%s%s) %s%s%s-%s%s%s%s'
                    , a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10])
         FROM (
                  SELECT ARRAY(
                                 SELECT trunc(random() * 10)::int
                                 FROM generate_series(1, 10)
                             ) AS a
              ) sub),
        (SELECT floor(random() * 10000000)::int),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2020-01-01 00:00:00' + random() * (now() - timestamp '2019-01-01 00:00:00')));

INSERT INTO public.resigned_employee (id, employee_name, department_name, phone_no, salary, created_at, onboard_at,
                                      offboard_at)
VALUES (DEFAULT,
        'Jack',
        'HR',
        (SELECT format('(%s%s%s) %s%s%s-%s%s%s%s'
                    , a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10])
         FROM (
                  SELECT ARRAY(
                                 SELECT trunc(random() * 10)::int
                                 FROM generate_series(1, 10)
                             ) AS a
              ) sub),
        (SELECT floor(random() * 10000000)::int),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2020-01-01 00:00:00' + random() * (now() - timestamp '2019-01-01 00:00:00')));

INSERT INTO public.resigned_employee (id, employee_name, department_name, phone_no, salary, created_at, onboard_at,
                                      offboard_at)
VALUES (DEFAULT,
        'Steve',
        'HR',
        (SELECT format('(%s%s%s) %s%s%s-%s%s%s%s'
                    , a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10])
         FROM (
                  SELECT ARRAY(
                                 SELECT trunc(random() * 10)::int
                                 FROM generate_series(1, 10)
                             ) AS a
              ) sub),
        (SELECT floor(random() * 10000000)::int),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2020-01-01 00:00:00' + random() * (now() - timestamp '2019-01-01 00:00:00')));

INSERT INTO public.resigned_employee (id, employee_name, department_name, phone_no, salary, created_at, onboard_at,
                                      offboard_at)
VALUES (DEFAULT,
        'William',
        'Engineer',
        (SELECT format('(%s%s%s) %s%s%s-%s%s%s%s'
                    , a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10])
         FROM (
                  SELECT ARRAY(
                                 SELECT trunc(random() * 10)::int
                                 FROM generate_series(1, 10)
                             ) AS a
              ) sub),
        (SELECT floor(random() * 10000000)::int),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2020-01-01 00:00:00' + random() * (now() - timestamp '2019-01-01 00:00:00')));

INSERT INTO public.resigned_employee (id, employee_name, department_name, phone_no, salary, created_at, onboard_at,
                                      offboard_at)
VALUES (DEFAULT,
        'Alice',
        'Engineer',
        (SELECT format('(%s%s%s) %s%s%s-%s%s%s%s'
                    , a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10])
         FROM (
                  SELECT ARRAY(
                                 SELECT trunc(random() * 10)::int
                                 FROM generate_series(1, 10)
                             ) AS a
              ) sub),
        (SELECT floor(random() * 10000000)::int),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2020-01-01 00:00:00' + random() * (now() - timestamp '2019-01-01 00:00:00')));

INSERT INTO public.resigned_employee (id, employee_name, department_name, phone_no, salary, created_at, onboard_at,
                                      offboard_at)
VALUES (DEFAULT,
        'Amanda',
        'Engineer',
        (SELECT format('(%s%s%s) %s%s%s-%s%s%s%s'
                    , a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10])
         FROM (
                  SELECT ARRAY(
                                 SELECT trunc(random() * 10)::int
                                 FROM generate_series(1, 10)
                             ) AS a
              ) sub),
        (SELECT floor(random() * 10000000)::int),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2017-01-01 00:00:00' + random() * (now() - timestamp '2017-01-01 00:00:00')),
        (select timestamp '2020-01-01 00:00:00' + random() * (now() - timestamp '2019-01-01 00:00:00')));