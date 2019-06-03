USE [bdSistemaCiaTecnica]
GO

/****** Object:  StoredProcedure [dbo].[proc_addOrEditJuridica]    Script Date: 06/03/2019 01:29:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Gabriel Pierotti>
-- Create date: <31/05/2019>
-- Description:	<Insere ou edita pessoa juridica>
-- =============================================
CREATE PROCEDURE [dbo].[proc_addOrEditJuridica]
	-- Add the parameters for the stored procedure here
		
		@CEP varchar(9),
		@Logradouro varchar(100),
		@Numero varchar(10),
		@Complemento varchar(50),
		@Bairro varchar(50),
		@Cidade varchar(50),
		@UF varchar(50),		
		@CNPJ varchar (15),
		@RazaoSocial varchar(100),
		@Nomefantasia varchar (100)
	
AS
BEGIN	

	Declare @IDCNPJ varchar (20);
		
	SET @IDCNPJ = (Select CNPJ from TbPessoaJuridica where CNPJ = @CNPJ)
	IF @IDCNPJ IS NULL
	
		BEGIN
			INSERT INTO TbPessoaJuridica(CNPJ,RazaoSocial,NomeFantasia,CEP,Logradouro,Numero,Complemento,Bairro,Cidade,UF) 
			Values( @CNPJ, 
					@RazaoSocial,
					@NomeFantasia,				
					@CEP,
					@Logradouro,
					@Numero ,
					@Complemento ,
					@Bairro,
					@Cidade,
					@UF
				  )
		END
	
	ELSE
		BEGIN
			UPDATE TbPessoaJuridica
			SET 
			RazaoSocial = @RazaoSocial,
			NomeFantasia = @NomeFantasia,				
			CEP = @CEP,
			Logradouro = @Logradouro,
			Numero= @Numero,
			Complemento = @Complemento,
			Bairro = @Bairro,
			Cidade = @Cidade,
			UF = @UF
			WHERE CNPJ = @CNPJ 
		END
END


GO


