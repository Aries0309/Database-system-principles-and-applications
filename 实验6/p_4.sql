SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zcy
-- Create date: 2020-12-19
-- Description:	�����������������Ĵ洢����p_4����ѯĳ��ָ��������ĳ��ָ�����еĴ��������Ҫ���г��������ơ��������ơ��������ںʹ����ִ�иô洢���̲�ѯ������ʯ�����޹�˾ ���ڡ����������Ϻ�A���С��Ĵ��������
-- =============================================
CREATE PROCEDURE [dbo].[p_4]
    -- Add the parameters for the stored procedure here
    @Ename nvarchar(15),
    @Bname nvarchar(10)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT Ename, Bname, Ldate, Lamount
    FROM BankT, LegalEntityT, LoanT
    WHERE BankT.Bno = LoanT.Bno AND LegalEntityT.Eno = LoanT.Eno AND Ename = @Ename AND Bname = @Bname
END
GO
