SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zcy
-- Create date: 2020-12-19
-- Description:	��������������Ĵ洢����p_2����ѯĳ��ָ�����еĴ��������Ҫ���г��������ơ��������ںʹ����ִ�иô洢���̲�ѯ���������б���B֧�С��Ĵ��������
-- =============================================
CREATE PROCEDURE [dbo].[p_2]
    -- Add the parameters for the stored procedure here
    @Bname nvarchar(10)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT Ename, Ldate, Lamount
    FROM LegalEntityT, LoanT
    WHERE LegalEntityT.Eno = LoanT.Eno AND Bno = (SELECT Bno
        FROM BankT
        WHERE Bname = @Bname)
END
GO
