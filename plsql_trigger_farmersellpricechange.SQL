CREATE OR REPLACE TRIGGER display_mprice_changes
BEFORE DELETE OR INSERT OR UPDATE ON market_p
FOR EACH ROW
WHEN (NEW.ID > 0)
DECLARE
mprice_diff number;
BEGIN
mprice_diff := :NEW.price - :OLD.price;
dbms_output.put_line('Previous Selling Price: ' || :OLD.price);
dbms_output.put_line('New Selling Price: ' || :NEW.price);
dbms_output.put_line('Selling Price difference: ' || mprice_diff);
END;
/
