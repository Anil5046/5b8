
create table repurchase_history.history_table1 as select * from gcp17-11.repurchase_history.history_table

CREATE TABLE
	repurchase_history.partition1 (cid INTEGER,
    upc INT64,
    oid INT64,
    dt date,
    r_dt date,
    prc float64,
    qty INT64,
    amt float64,
    r_qty INT64,
    r_amt float64,
    web_prod_id INT64,
    GMM_DESC string,
    PARENT_MDSE_DIVN_DESC string,
    Last_Modifies_Time timestamp,
    Country_code string,
    ENTITY_CODE string)
PARTITION BY
  DATE_TRUNC(dt,month)
CLUSTER BY
  cid,
  upc;
  
  
  
  
  insert into  `repurchase_history.partition1` select * from repurchase_history.history_table;
