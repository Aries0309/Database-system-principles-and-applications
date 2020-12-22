SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zcy
-- Create date: 2020-12-21
-- Description:	���ô洢���̺��α꣬ʵ�ֲ�ѯָ�����е�������Ϣ������������ʽ�����
--���д���:B1100 ��������:�������б������� �绰:010-4573
--�����е���ϵ�绰Ϊ��ֵ���������δ֪��
-- =============================================
CREATE PROCEDURE [dbo].[task_2]
    -- Add the parameters for the stored procedure here
    @city nvarchar(10)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
    DECLARE task_2 CURSOR
  FOR SELECT *
    FROM BankT
    WHERE Bname LIKE '%'+@city+'%'
    OPEN task_2
    DECLARE @bank_id CHAR(5),@bank_name NVARCHAR(20),@bank_tel CHAR(15)
    FETCH NEXT FROM task_2
  into @bank_id,@bank_name,@bank_tel
    WHILE @@FETCH_STATUS=0
  BEGIN
        IF @bank_tel IS NULL
  SET @bank_tel='δ֪'
        PRINT '���д��룺'+@bank_id+' �������ƣ�'+@bank_name+' ��ϵ�绰��'+@bank_tel
        FETCH NEXT FROM task_2 INTO @bank_id,@bank_name,@bank_tel
    END
    CLOSE task_2
    DEALLOCATE task_2
END
GO
