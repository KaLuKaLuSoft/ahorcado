USE [bd_ahorcado]
GO
/****** Object:  Table [dbo].[tb_CCasas]    Script Date: 15/11/2021 23:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_CCasas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cosascasas] [varchar](100) NULL,
 CONSTRAINT [PK_tb_CCasas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_usuario]    Script Date: 15/11/2021 23:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_usuario](
	[id] [int] NULL,
	[usuario] [varchar](50) NULL,
	[contrasena] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_CCasas] ON 

INSERT [dbo].[tb_CCasas] ([id], [cosascasas]) VALUES (1, N'ventilador')
INSERT [dbo].[tb_CCasas] ([id], [cosascasas]) VALUES (2, N'mesa')
INSERT [dbo].[tb_CCasas] ([id], [cosascasas]) VALUES (3, N'refrigerador')
INSERT [dbo].[tb_CCasas] ([id], [cosascasas]) VALUES (4, N'television')
INSERT [dbo].[tb_CCasas] ([id], [cosascasas]) VALUES (5, N'ropero')
INSERT [dbo].[tb_CCasas] ([id], [cosascasas]) VALUES (6, N'estufa')
INSERT [dbo].[tb_CCasas] ([id], [cosascasas]) VALUES (7, N'baño')
INSERT [dbo].[tb_CCasas] ([id], [cosascasas]) VALUES (8, N'linterna')
INSERT [dbo].[tb_CCasas] ([id], [cosascasas]) VALUES (9, N'cama')
INSERT [dbo].[tb_CCasas] ([id], [cosascasas]) VALUES (10, N'silla')
INSERT [dbo].[tb_CCasas] ([id], [cosascasas]) VALUES (11, N'sillon')
INSERT [dbo].[tb_CCasas] ([id], [cosascasas]) VALUES (12, N'ventana')
INSERT [dbo].[tb_CCasas] ([id], [cosascasas]) VALUES (13, N'espejo')
INSERT [dbo].[tb_CCasas] ([id], [cosascasas]) VALUES (14, N'foco')
INSERT [dbo].[tb_CCasas] ([id], [cosascasas]) VALUES (15, N'cortina')
INSERT [dbo].[tb_CCasas] ([id], [cosascasas]) VALUES (16, N'puerta')
INSERT [dbo].[tb_CCasas] ([id], [cosascasas]) VALUES (17, N'sofa')
INSERT [dbo].[tb_CCasas] ([id], [cosascasas]) VALUES (18, N'almohada')
INSERT [dbo].[tb_CCasas] ([id], [cosascasas]) VALUES (19, N'sabanas')
SET IDENTITY_INSERT [dbo].[tb_CCasas] OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_listarcasas]    Script Date: 15/11/2021 23:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_listarcasas]
as
select id, cosascasas
from tb_CCasas
GO
