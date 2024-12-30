CREATE PROCEDURE UpdateWatermarkTable
    @lastload varchar(200)
AS
BEGIN
 --Start the transaction
  BEGIN TRANSACTION;

--Update the incremental colmn in the table
  UPDATE watermark_table 
  SET last_load = @lastload

 -- Commit transaction
  COMMIT TRANSACTION;

  END;

