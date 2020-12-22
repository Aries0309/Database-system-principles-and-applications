SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zcy
-- Create date: 2020-12-19
-- Description:	�����洢����p_7��ͳ�ƣ���ָ�����д����Ҵ�������ڴ�����ƽ��������ķ������ơ��������ںʹ�������ָ������Ϊ ���������б���B֧�С���ִ�д˴洢���̣���ѯ���������Ĵ����ˡ�
-- =============================================
CREATE PROCEDURE [dbo].[p_7]
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
        WHERE Bname = @Bname) AND Lamount > (SELECT AVG(Lamount)
        FROM LoanT
        WHERE Bno = (SELECT Bno
        FROM BankT
        WHERE Bname = @Bname))
END
GO
