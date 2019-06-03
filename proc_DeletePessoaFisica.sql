USE [bdSistemaCiaTecnica]
GO

/****** Object:  StoredProcedure [dbo].[proc_deleteFisica]    Script Date: 06/03/2019 01:30:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

 --=============================================
-- Author:		<Gabriel Pierotti>
-- Create date: <31/05/2019>
-- Description:	<Deleta pessoa fisica>
-- =============================================
CREATE PROCEDURE [dbo].[proc_deleteFisica]

		@CPF varchar (15)
		
AS
BEGIN
	DELETE FROM TbPessoaFisica 
	WHERE CPF = @CPF
END


GO


