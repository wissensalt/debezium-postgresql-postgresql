create table IF NOT EXISTS public.resigned_employee
(
    id bigserial not null
        constraint resigned_employee_pkey
            primary key,        
    employee_name varchar (150),
    department_name varchar (150),
    phone_no varchar (150),
    salary integer,        
    created_at timestamptz not null,
    onboard_at timestamptz not null,
    offboard_at timestamptz not null
);