-- THIS BIGQUERY FOR LOADING THE DATA IN HISTORY TABLE WITHOUT PARTITION

bq query --use_legacy_sql=false
insert into
  repurchase_history.history_table
select
  safe_cast(cid as int64),
  safe_cast(upc as int64),
  safe_cast(oid as int64),
  parse_date("%m/%d/%y",dt),
  parse_date("%m/%d/%y",r_dt),
  cast(prc as float64),
  safe_cast(qty as int64),
  cast(amt as float64),
  safe_cast(r_qty as int64),
  safe_cast(r_amt as int64),
  safe_cast(web_prod_id as int64),
  gmm_desc string,
  parent_mdse_divn_desc string,
  current_timestamp() as last_modifies_time,
  'IND' as country_code,
  'Ap' as entity_code
from
  repurchase_stage.stage_table
