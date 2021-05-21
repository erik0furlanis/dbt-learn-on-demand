   with atp as (
 select
        *
    from `rsh-ops-central-us-scanalytics.Gold_Standard.ATP`
   )

   select * from atp
   where outbound_date = current_date -1

