CREATE OR REPLACE FUNCTION sp_42()
RETURNS trigger
AS $$
BEGIN
    DELETE FROM operation
    WHERE article_id = OLD.id;
    
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;
