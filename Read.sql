CREATE PROCEDURE sp_GetAllMyOfficeACPD
AS
BEGIN
    SELECT 
        ACPD_SID,
        ACPD_Cname,
        ACPD_Ename,
        ACPD_Sname,
        ACPD_Email,
        ACPD_Status,
        ACPD_Stop,
        ACPD_StopMemo,
        ACPD_LoginID,
        ACPD_LoginPWD,
        ACPD_Memo,
        ACPD_NowDateTime,
        ACPD_NowID,
        ACPD_UPDDateTime,
        ACPD_UPDID
    FROM MyOffice_ACPD
    FOR JSON AUTO;
END;
