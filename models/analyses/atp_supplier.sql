select ds.cfc_id, cfc_name, supplier_name,avg(ifnull(atp_status,0)) atp from `rsh-ops-central-us-scanalytics.Gold_Standard.dimn_shipcase` ds 
left join {{ ref('fct_atp') }} atp
on atp.sku_id = ds.sku_id
and atp.cfc_id = ds.cfc_id
and atp.outbound_date = current_date-1
where current_date-1 between ds.start_date and ds.end_date
group by 1,2,3