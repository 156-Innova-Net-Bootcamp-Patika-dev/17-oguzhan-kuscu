USE [sirket]
GO
/****** Object:  Table [dbo].[birim]    Script Date: 2.02.2022 20:52:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[birim](
	[birim_no] [int] IDENTITY(1,1) NOT NULL,
	[birim_ad] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[birim_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cocuk]    Script Date: 2.02.2022 20:52:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cocuk](
	[cocuk_no] [int] IDENTITY(1,1) NOT NULL,
	[ad] [varchar](25) NOT NULL,
	[soyad] [varchar](25) NOT NULL,
	[cinsiyet] [char](1) NULL,
	[dogum_tarihi] [date] NOT NULL,
	[dogu_yeri] [int] NOT NULL,
	[personel_no] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cocuk_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gorevlendirme]    Script Date: 2.02.2022 20:52:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gorevlendirme](
	[gorevlendirme_no] [int] IDENTITY(1,1) NOT NULL,
	[proje_no] [int] NOT NULL,
	[personel_no] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[gorevlendirme_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[il]    Script Date: 2.02.2022 20:52:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[il](
	[il_no] [char](2) NOT NULL,
	[il_ad] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[il_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ilce]    Script Date: 2.02.2022 20:52:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ilce](
	[ilce_no] [int] IDENTITY(1,1) NOT NULL,
	[ilce_ad] [varchar](20) NOT NULL,
	[il_no] [char](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ilce_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personel]    Script Date: 2.02.2022 20:52:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personel](
	[personel_no] [int] IDENTITY(1,1) NOT NULL,
	[ad] [varchar](25) NOT NULL,
	[soyad] [varchar](25) NOT NULL,
	[cinsiyet] [char](1) NOT NULL,
	[dogum_tarihi] [date] NOT NULL,
	[dogum_yeri] [int] NOT NULL,
	[baslama_tarihi] [date] NOT NULL,
	[birim_no] [int] NOT NULL,
	[unvan_no] [int] NOT NULL,
	[calisma_saati] [tinyint] NOT NULL,
	[maas] [money] NOT NULL,
	[prim] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[personel_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proje]    Script Date: 2.02.2022 20:52:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proje](
	[proje_no] [int] IDENTITY(1,1) NOT NULL,
	[proje_ad] [varchar](20) NOT NULL,
	[baslama_tarihi] [date] NOT NULL,
	[planlanan_bitis_tarihi] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[proje_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[unvan]    Script Date: 2.02.2022 20:52:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unvan](
	[unvan_no] [int] IDENTITY(1,1) NOT NULL,
	[unvan_ad] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[unvan_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[il] ([il_no], [il_ad]) VALUES (N'06', N'ANKARA')
INSERT [dbo].[il] ([il_no], [il_ad]) VALUES (N'34', N'İSTANBUL')
INSERT [dbo].[il] ([il_no], [il_ad]) VALUES (N'35', N'İZMİR')
SET IDENTITY_INSERT [dbo].[proje] ON 

INSERT [dbo].[proje] ([proje_no], [proje_ad], [baslama_tarihi], [planlanan_bitis_tarihi]) VALUES (1, N'TEMİZ DÜNYA', CAST(N'2015-01-20' AS Date), CAST(N'2017-01-11' AS Date))
INSERT [dbo].[proje] ([proje_no], [proje_ad], [baslama_tarihi], [planlanan_bitis_tarihi]) VALUES (2, N'GÜVENLİ INTERNET', CAST(N'2017-05-15' AS Date), CAST(N'2020-06-09' AS Date))
INSERT [dbo].[proje] ([proje_no], [proje_ad], [baslama_tarihi], [planlanan_bitis_tarihi]) VALUES (3, N'MUTLU ŞEHİR', CAST(N'2017-07-11' AS Date), CAST(N'2019-11-29' AS Date))
INSERT [dbo].[proje] ([proje_no], [proje_ad], [baslama_tarihi], [planlanan_bitis_tarihi]) VALUES (4, N'AKILLI EVLER', CAST(N'2018-02-10' AS Date), CAST(N'2021-11-29' AS Date))
INSERT [dbo].[proje] ([proje_no], [proje_ad], [baslama_tarihi], [planlanan_bitis_tarihi]) VALUES (5, N'SESSİZ ORTAM', CAST(N'2018-03-01' AS Date), CAST(N'2019-11-29' AS Date))
SET IDENTITY_INSERT [dbo].[proje] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__birim__09A4B74C719A28FD]    Script Date: 2.02.2022 20:52:36 ******/
ALTER TABLE [dbo].[birim] ADD UNIQUE NONCLUSTERED 
(
	[birim_ad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__cocuk__DEC82C452C25C32E]    Script Date: 2.02.2022 20:52:36 ******/
ALTER TABLE [dbo].[cocuk] ADD UNIQUE NONCLUSTERED 
(
	[dogum_tarihi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [projePersonelTekil]    Script Date: 2.02.2022 20:52:36 ******/
ALTER TABLE [dbo].[gorevlendirme] ADD  CONSTRAINT [projePersonelTekil] UNIQUE NONCLUSTERED 
(
	[proje_no] ASC,
	[personel_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__il__ACA87A347D5AB5E6]    Script Date: 2.02.2022 20:52:36 ******/
ALTER TABLE [dbo].[il] ADD UNIQUE NONCLUSTERED 
(
	[il_ad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ilceTekil]    Script Date: 2.02.2022 20:52:36 ******/
ALTER TABLE [dbo].[ilce] ADD  CONSTRAINT [ilceTekil] UNIQUE NONCLUSTERED 
(
	[ilce_ad] ASC,
	[il_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__proje__518BD2456E9ED094]    Script Date: 2.02.2022 20:52:36 ******/
ALTER TABLE [dbo].[proje] ADD UNIQUE NONCLUSTERED 
(
	[proje_ad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__unvan__EB18F55A3DBE497A]    Script Date: 2.02.2022 20:52:36 ******/
ALTER TABLE [dbo].[unvan] ADD UNIQUE NONCLUSTERED 
(
	[unvan_ad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[personel] ADD  DEFAULT ((0)) FOR [prim]
GO
ALTER TABLE [dbo].[cocuk]  WITH CHECK ADD FOREIGN KEY([dogu_yeri])
REFERENCES [dbo].[ilce] ([ilce_no])
GO
ALTER TABLE [dbo].[cocuk]  WITH CHECK ADD FOREIGN KEY([personel_no])
REFERENCES [dbo].[personel] ([personel_no])
GO
ALTER TABLE [dbo].[gorevlendirme]  WITH CHECK ADD FOREIGN KEY([personel_no])
REFERENCES [dbo].[personel] ([personel_no])
GO
ALTER TABLE [dbo].[gorevlendirme]  WITH CHECK ADD FOREIGN KEY([proje_no])
REFERENCES [dbo].[proje] ([proje_no])
GO
ALTER TABLE [dbo].[ilce]  WITH CHECK ADD FOREIGN KEY([il_no])
REFERENCES [dbo].[il] ([il_no])
GO
ALTER TABLE [dbo].[personel]  WITH CHECK ADD FOREIGN KEY([birim_no])
REFERENCES [dbo].[birim] ([birim_no])
GO
ALTER TABLE [dbo].[personel]  WITH CHECK ADD FOREIGN KEY([dogum_yeri])
REFERENCES [dbo].[ilce] ([ilce_no])
GO
ALTER TABLE [dbo].[personel]  WITH CHECK ADD FOREIGN KEY([unvan_no])
REFERENCES [dbo].[unvan] ([unvan_no])
GO
