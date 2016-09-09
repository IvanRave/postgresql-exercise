DROP TRIGGER IF EXISTS del_rel_operations ON article;

CREATE TRIGGER del_rel_operations
BEFORE DELETE ON article
FOR EACH ROW
EXECUTE PROCEDURE sp_42();

DELETE FROM article WHERE id = 4;

-- alternative solution: on delete cascade
