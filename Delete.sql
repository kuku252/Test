CREATE PROCEDURE sp_DeleteMyOfficeACPD
    @JsonData NVARCHAR(MAX)
AS
BEGIN
    DECLARE @ACPD_SID INT;

    SELECT 
        @ACPD_SID = JSON_VALUE(@JsonData, '$.ACPD_SID');

    DELETE FROM MyOffice_ACPD
    WHERE ACPD_SID = @ACPD_SID;
END;
