USE [bdSistemaCiaTecnica]
GO

/****** Object:  Table [dbo].[TbPessoaFisica]    Script Date: 06/03/2019 01:26:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TbPessoaFisica](
	[CPF] [varchar](20) NOT NULL,
	[DataNascimento] [varchar](10) NULL,
	[Nome] [varchar](50) NOT NULL,
	[Sobrenome] [varchar](15) NOT NULL,
	[CEP] [varchar](9) NOT NULL,
	[Logradouro] [varchar](100) NOT NULL,
	[Numero] [varchar](10) NOT NULL,
	[Complemento] [varchar](50) NOT NULL,
	[Bairro] [varchar](50) NOT NULL,
	[Cidade] [varchar](50) NOT NULL,
	[UF] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CPF] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


