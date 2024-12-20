CREATE PROCEDURE sp_CreateMyOfficeACPD
    @JsonData NVARCHAR(MAX)
AS
BEGIN
    DECLARE @ACPD_Cname NVARCHAR(50),
            @ACPD_Ename NVARCHAR(50),
            @ACPD_Sname NVARCHAR(50),
            @ACPD_Email NVARCHAR(100),
            @ACPD_Status NVARCHAR(50),
            @ACPD_Stop BIT,
            @ACPD_StopMemo NVARCHAR(255),
            @ACPD_LoginID NVARCHAR(50),
            @ACPD_LoginPWD NVARCHAR(50),
            @ACPD_Memo NVARCHAR(255),
            @ACPD_NowDateTime DATETIME,
            @ACPD_NowID NVARCHAR(50),
            @ACPD_UPDDateTime DATETIME,
            @ACPD_UPDID NVARCHAR(50);

    SELECT
        @ACPD_Cname = JSON_VALUE(@JsonData, '$.ACPD_Cname'),
        @ACPD_Ename = JSON_VALUE(@JsonData, '$.ACPD_Ename'),
        @ACPD_Sname = JSON_VALUE(@JsonData, '$.ACPD_Sname'),
        @ACPD_Email = JSON_VALUE(@JsonData, '$.ACPD_Email'),
        @ACPD_Status = JSON_VALUE(@JsonData, '$.ACPD_Status'),
        @ACPD_Stop = JSON_VALUE(@JsonData, '$.ACPD_Stop'),
        @ACPD_StopMemo = JSON_VALUE(@JsonData, '$.ACPD_StopMemo'),
        @ACPD_LoginID = JSON_VALUE(@JsonData, '$.ACPD_LoginID'),
        @ACPD_LoginPWD = JSON_VALUE(@JsonData, '$.ACPD_LoginPWD'),
        @ACPD_Memo = JSON_VALUE(@JsonData, '$.ACPD_Memo'),
        @ACPD_NowDateTime = JSON_VALUE(@JsonData, '$.ACPD_NowDateTime'),
        @ACPD_NowID = JSON_VALUE(@JsonData, '$.ACPD_NowID'),
        @ACPD_UPDDateTime = JSON_VALUE(@JsonData, '$.ACPD_UPDDateTime'),
        @ACPD_UPDID = JSON_VALUE(@JsonData, '$.ACPD_UPDID');

    INSERT INTO MyOffice_ACPD (ACPD_Cname, ACPD_Ename, ACPD_Sname, ACPD_Email, ACPD_Status, ACPD_Stop, ACPD_StopMemo, ACPD_LoginID, ACPD_LoginPWD, ACPD_Memo, ACPD_NowDateTime, ACPD_NowID, ACPD_UPDDateTime, ACPD_UPDID)
    VALUES (@ACPD_Cname, @ACPD_Ename, @ACPD_Sname, @ACPD_Email, @ACPD_Status, @ACPD_Stop, @ACPD_StopMemo, @ACPD_LoginID, @ACPD_LoginPWD, @ACPD_Memo, @ACPD_NowDateTime, @ACPD_NowID, @ACPD_UPDDateTime, @ACPD_UPDID);
END;
