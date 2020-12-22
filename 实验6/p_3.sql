SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zcy
-- Create date: 2020-12-19
-- Description:	���������������Ĭ��ֵ�Ĵ洢����p_3����ѯĳ��ָ�����У��������Ƶ�Ĭ��ֵΪ���������б������С����Ĵ��������Ҫ���г��������ơ��������ںʹ����ִ�иô洢���̷ֱ��ѯ���������б������С��͡��������б���A֧�С� �Ĵ��������
-- =============================================
CREATE PROCEDURE [dbo].[p_3]
    -- Add the parameters for the stored procedure here
    @Bname nvarchar(10) = '�������б�������'
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
