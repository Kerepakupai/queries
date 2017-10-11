CREATE PROCEDURE demoiso_blueisocial.clean_iso_tables(IN p VARCHAR(255), IN s VARCHAR(255))
  BEGIN
-- Pattern to Match
  SET @pattern = p;
  SET @schema = s;

-- Temporary Table to Store the Result of The Select Statement

  CREATE TEMPORARY TABLE IF NOT EXISTS Table_ToBeTruncated
  (
    Id int NOT NULL AUTO_INCREMENT,TableName varchar(100),
    PRIMARY KEY (id)
  );

-- Insert all the TableName to be Truncated
  insert Table_ToBeTruncated(TableName)
  SELECT distinct concat('TRUNCATE TABLE `', TABLE_NAME, '`;')
    FROM INFORMATION_SCHEMA.TABLES
    WHERE TABLE_NAME LIKE @pattern and TABLE_SCHEMA = @schema
  AND Table_Type = 'BASE TABLE';

-- Declare a variable to count the no of records to be truncated.
  SET @count=(Select count(*)from Table_ToBeTruncated);

   SET FOREIGN_KEY_CHECKS=0;
-- Iterate the list
  WHILE @count> 0 DO

    -- Pick One table from the Temporary Table List;
    SELECT TableName into @truncatelike from Table_ToBeTruncated where ID= @count;

      -- Prepare the statement
      PREPARE stmt FROM @truncatelike;
      EXECUTE stmt;
      DEALLOCATE PREPARE stmt;

      -- Decrease the counter.
      set @count = @count- 1;

  END WHILE;
  SET FOREIGN_KEY_CHECKS=1;

  drop TEMPORARY TABLE IF EXISTS Table_ToBeTruncated ;

END;