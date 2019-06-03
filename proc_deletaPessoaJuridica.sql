USE [bdSistemaCiaTecnica]
GO

/****** Object:  StoredProcedure [dbo].[proc_deleteJuridica]    Script Date: 06/03/2019 01:31:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

 --=============================================
-- Author:		<Gabriel Pierotti>
-- Create date: <31/05/2019>
-- Description:	<Deleta pessoa juridica>
-- =============================================
CREATE PROCEDURE [dbo].[proc_deleteJuridica]

		@CNPJ varchar (15)
		
AS
BEGIN
	DELETE FROM TbPessoaJuridica 
	WHERE CNPJ = @CNPJ
END


GO


