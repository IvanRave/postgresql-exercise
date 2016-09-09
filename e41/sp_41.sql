CREATE OR REPLACE FUNCTION sp_41()
RETURNS trigger AS $$
BEGIN
  NEW.opdate := current_timestamp;

  IF NEW.optype = 0 THEN

     UPDATE article
     SET rest = rest - NEW.quantity
     WHERE id = NEW.article_id
     AND rest >= NEW.quantity;

     IF NOT FOUND THEN
        RAISE EXCEPTION 'not found or article.rest less than operation.quantity';
     END IF;
     
  ELSEIF NEW.optype = 1 THEN
  
     UPDATE article
     SET rest = rest + NEW.quantity
     WHERE id = NEW.article_id;

     IF NOT FOUND THEN
        RAISE EXCEPTION 'not found';
     END IF;
     
  ELSE
     RAISE EXCEPTION 'optype is not supported';
  END IF;
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;
