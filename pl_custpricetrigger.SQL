CREATE OR REPLACE TRIGGER display_cprice_changes
BEFORE DELETE OR INSERT OR UPDATE ON consumer_cp
FOR EACH ROW
WHEN (NEW.ID > 0)
DECLARE
cprice_diff number;
BEGIN
cprice_diff := :NEW.cust_price - :OLD.cust_price;
dbms_output.put_line('Previous Price: ' || :OLD.cust_price);
dbms_output.put_line('New Price: ' || :NEW.cust_price);
dbms_output.put_line('Price difference: ' || cprice_diff);
END;
/
