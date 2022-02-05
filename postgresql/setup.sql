create table IF NOT EXISTS public.phone_credits
(
    id bigserial not null
        constraint phone_credits_pkey
            primary key,
    public_id varchar (256),
    transaction_date timestamp,
    outlet_sap_code varchar (150),
    phone_no varchar (150),
    quantity integer,
    purchase_price integer,
    selling_price integer,
    sku varchar (150),
    sync_at varchar (150),
    created_at timestamp not null,
    updated_at timestamp not null,
    order_id integer,
    pos_outlet_id integer
);

create index index_phone_credits_on_public_id
    on public.phone_credits USING btree (public_id);

create index index_phone_credits_on_pos_outlet_id
    on public.phone_credits USING btree (pos_outlet_id);

create index index_phone_credits_order_id
    on public.phone_credits USING btree (order_id);

ALTER TABLE public.phone_credits ALTER COLUMN transaction_date TYPE timestamptz(6) USING transaction_date::timestamptz;
ALTER TABLE public.phone_credits ALTER COLUMN sync_at TYPE timestamptz(0) USING sync_at::timestamptz;
ALTER TABLE public.phone_credits ALTER COLUMN created_at TYPE timestamptz(6) USING created_at::timestamptz;
ALTER TABLE public.phone_credits ALTER COLUMN updated_at TYPE timestamptz(6) USING updated_at::timestamptz;

ALTER TABLE phone_credits ADD COLUMN client_created_at timestamptz(6);