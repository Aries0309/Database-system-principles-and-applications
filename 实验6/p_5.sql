SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zcy
-- Create date: 2020-12-19
-- Description:	�����������������������Ĵ洢����p_5��ͳ��ָ�����е�������ָ�������Ժ�Ĵ����ܽ���ƽ���������ͳ�ƽ����Ϊ���������ִ�иô洢���̲�ѯ���������е����������ڡ�2008-1-1���Ժ�Ĵ����ܽ���ƽ�������
-- =============================================
CREATE PROCEDURE [dbo].[p_5]
    -- Add the parameters for the stored procedure here
    @sum int OUTPUT,
    @avg int OUTPUT,
    @Bname nvarchar(15),
    @Ldate smalldatetime
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT @sum = SUM(Lamount), @avg = AVG(Lamount)
    FROM LoanT, BankT
    WHERE LoanT.Bno = BankT.Bno AND Bname like '%' + @Bname + '%' AND Ldate > @Ldate
END
GO
