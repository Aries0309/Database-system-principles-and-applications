SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zcy
-- Create date: 2020-12-19
-- Description:	������������������������Ĭ��ֵ�Ĵ洢����p_6��ͳ�ƣ�m+(m+1)+(m+2)+�6�7+n�ĺͣ�����m��n��Ϊ��������m<n��m��n��Ĭ��ֵ�ֱ�Ϊ1��100��ִ�иô洢���̣�����1~20���������ĺ͡�
-- =============================================
CREATE PROCEDURE [dbo].[p_6]
    -- Add the parameters for the stored procedure here
    @m int = 1,
    @n int = 100,
    @sum int output
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET @sum = 0;

    -- Insert statements for procedure here
    while @m < @n
	begin
        set @sum = @sum + @m
        set @m = @m +1
    end
END
GO
