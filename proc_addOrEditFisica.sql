USE [bdSistemaCiaTecnica]
GO

/****** Object:  StoredProcedure [dbo].[proc_addOrEditFisica]    Script Date: 06/03/2019 01:28:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Gabriel Pierotti>
-- Create date: <31/05/2019>
-- Description:	<Insere ou edita pessoa Fisica>
-- =============================================
CREATE PROCEDURE [dbo].[proc_addOrEditFisica]
	-- Add the parameters for the stored procedure here
		
		@CEP varchar(9),
		@Logradouro varchar(100),
		@Numero varchar(10),
		@Complemento varchar(50),
		@Bairro varchar(50),
		@Cidade varchar(50),
		@UF varchar(50),		
		@CPF varchar (15),
		@Nome varchar(100),
		@Sobrenome varchar (100),
		@DataNascimento varchar (100)		
AS
BEGIN	

	Declare @IDCPF varchar (20)	
	SET @IDCPF = (Select CPF from TbPessoaFisica where CPF = @CPF)
	IF @IDCPF IS NULL
		BEGIN
			INSERT INTO TbPessoaFisica(CPF,Nome,Sobrenome,DataNascimento,CEP,Logradouro,Numero,Complemento,Bairro,Cidade,UF) 
			Values( @CPF, 
					@Nome,
					@Sobrenome,		
					@DataNascimento,		
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
			UPDATE TbPessoaFisica
			SET 
			Nome = @Nome,
			Sobrenome = @Sobrenome,	
			DataNascimento = @DataNascimento,
			CEP = @CEP,
			Logradouro = @Logradouro,
			Numero= @Numero,
			Complemento = @Complemento,
			Bairro = @Bairro,
			Cidade = @Cidade,
			UF = @UF
			WHERE CPF = @CPF 
		END
END


GO


