    select
        *
    from {{ source('STAG','ATP_daily_STAG') }}
