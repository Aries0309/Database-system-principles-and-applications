CREATE TRIGGER task_1
   ON  LoanT
   INSTEAD OF INSERT
AS 
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for trigger here
    IF (SELECT Lterm
    FROM inserted) > 10 BEGIN
        DECLARE @Eno CHAR(3)
        SELECT @Eno = Eno
        FROM inserted
        IF (SELECT Enature
        FROM LegalEntityT
        WHERE Eno=@Eno)='˽Ӫ' BEGIN
            PRINT '˽Ӫ��ҵ�������޲��ó���10��'
            ROLLBACK TRANSACTION
        END
    END
END
