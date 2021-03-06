USE [db_EMS]
GO
/****** Object:  Table [dbo].[tb_units]    Script Date: 01/01/2017 11:57:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_units](
	[unitcode] [varchar](5) NOT NULL,
	[fullname] [varchar](30) NOT NULL,
	[tax] [varchar](30) NULL,
	[tel] [varchar](20) NULL,
	[linkman] [varchar](10) NULL,
	[address] [varchar](60) NULL,
	[accounts] [varchar](80) NULL,
	[gathering] [float] NULL,
	[payment] [float] NULL,
 CONSTRAINT [PK_tb_units] PRIMARY KEY CLUSTERED 
(
	[fullname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_unit]    Script Date: 01/01/2017 11:57:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_unit](
	[fullname] [varchar](30) NOT NULL,
	[tax] [varchar](30) NULL,
	[tel] [varchar](20) NULL,
	[linkman] [varchar](10) NULL,
	[address] [varchar](60) NULL,
	[accounts] [varchar](80) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_stock]    Script Date: 01/01/2017 11:57:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_stock](
	[tradecode] [varchar](5) NOT NULL,
	[fullname] [varchar](20) NOT NULL,
	[type] [varchar](10) NOT NULL,
	[standard] [varchar](10) NOT NULL,
	[unit] [varchar](10) NOT NULL,
	[produce] [varchar](20) NOT NULL,
	[qty] [float] NULL,
	[price] [float] NULL,
	[averageprice] [float] NULL,
	[saleprice] [float] NULL,
	[stockcheck] [float] NULL,
	[upperlimit] [int] NULL,
	[lowerlimit] [int] NULL,
 CONSTRAINT [PK_tb_stock] PRIMARY KEY CLUSTERED 
(
	[fullname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_power]    Script Date: 01/01/2017 11:57:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_power](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[sysuser] [varchar](20) NOT NULL,
	[password] [varchar](20) NULL,
	[stock] [bit] NULL,
	[vendition] [bit] NULL,
	[storage] [bit] NULL,
	[system] [bit] NULL,
	[base] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_employee]    Script Date: 01/01/2017 11:57:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_employee](
	[employeecode] [varchar](5) NOT NULL,
	[fullname] [varchar](10) NOT NULL,
	[sex] [varchar](4) NULL,
	[dept] [varchar](20) NULL,
	[tel] [varchar](20) NULL,
	[memo] [varchar](40) NULL,
 CONSTRAINT [PK_tb_employee] PRIMARY KEY CLUSTERED 
(
	[fullname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_warehouse_main]    Script Date: 01/01/2017 11:57:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_warehouse_main](
	[billdate] [datetime] NOT NULL,
	[billcode] [varchar](20) NOT NULL,
	[units] [varchar](30) NOT NULL,
	[handle] [varchar](10) NOT NULL,
	[summary] [varchar](100) NULL,
	[fullpayment] [float] NULL,
	[payment] [float] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_warehouse_detailed]    Script Date: 01/01/2017 11:57:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_warehouse_detailed](
	[billcode] [varchar](20) NOT NULL,
	[tradecode] [varchar](20) NOT NULL,
	[fullname] [varchar](20) NOT NULL,
	[unit] [varchar](10) NULL,
	[qty] [float] NULL,
	[price] [float] NULL,
	[tsum] [float] NULL,
	[billdate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_currentaccount]    Script Date: 01/01/2017 11:57:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_currentaccount](
	[billdate] [datetime] NOT NULL,
	[billcode] [varchar](20) NOT NULL,
	[addgathering] [float] NULL,
	[factaddfee] [float] NULL,
	[reducegathering] [float] NULL,
	[factfee] [float] NULL,
	[balance] [float] NULL,
	[units] [varchar](30) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_sell_main]    Script Date: 01/01/2017 11:57:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_sell_main](
	[billdate] [datetime] NOT NULL,
	[billcode] [varchar](20) NOT NULL,
	[units] [varchar](30) NOT NULL,
	[handle] [varchar](10) NOT NULL,
	[summary] [varchar](100) NULL,
	[fullgathering] [float] NULL,
	[gathering] [float] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_sell_detailed]    Script Date: 01/01/2017 11:57:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_sell_detailed](
	[billcode] [varchar](20) NOT NULL,
	[tradecode] [varchar](20) NOT NULL,
	[fullname] [varchar](20) NOT NULL,
	[unit] [varchar](4) NULL,
	[qty] [float] NULL,
	[price] [float] NULL,
	[tsum] [float] NULL,
	[billdate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_rewarehouse_main]    Script Date: 01/01/2017 11:57:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_rewarehouse_main](
	[billdate] [datetime] NOT NULL,
	[billcode] [varchar](20) NOT NULL,
	[units] [varchar](30) NOT NULL,
	[handle] [varchar](10) NOT NULL,
	[summary] [varchar](100) NULL,
	[fullgathering] [float] NULL,
	[gathering] [float] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_rewarehouse_detailed]    Script Date: 01/01/2017 11:57:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_rewarehouse_detailed](
	[billcode] [varchar](20) NOT NULL,
	[tradecode] [varchar](20) NOT NULL,
	[fullname] [varchar](20) NOT NULL,
	[type] [varchar](10) NULL,
	[standard] [varchar](10) NULL,
	[produce] [varchar](20) NULL,
	[unit] [char](4) NULL,
	[qty] [float] NULL,
	[price] [float] NULL,
	[tsum] [float] NULL,
	[billdate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_resell_main]    Script Date: 01/01/2017 11:57:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_resell_main](
	[billdate] [datetime] NOT NULL,
	[billcode] [varchar](20) NOT NULL,
	[units] [varchar](30) NOT NULL,
	[handle] [varchar](10) NOT NULL,
	[summary] [varchar](100) NULL,
	[fullpayment] [float] NULL,
	[payment] [float] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_resell_detailed]    Script Date: 01/01/2017 11:57:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_resell_detailed](
	[billcode] [varchar](20) NOT NULL,
	[tradecode] [varchar](20) NOT NULL,
	[fullname] [varchar](20) NOT NULL,
	[unit] [char](4) NULL,
	[qty] [float] NULL,
	[price] [float] NULL,
	[tsum] [float] NULL,
	[billdate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_tb_power_stock]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_power] ADD  CONSTRAINT [DF_tb_power_stock]  DEFAULT ((0)) FOR [stock]
GO
/****** Object:  Default [DF_tb_power_vendition]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_power] ADD  CONSTRAINT [DF_tb_power_vendition]  DEFAULT ((0)) FOR [vendition]
GO
/****** Object:  Default [DF_tb_power_storage]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_power] ADD  CONSTRAINT [DF_tb_power_storage]  DEFAULT ((0)) FOR [storage]
GO
/****** Object:  Default [DF_tb_power_system]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_power] ADD  CONSTRAINT [DF_tb_power_system]  DEFAULT ((0)) FOR [system]
GO
/****** Object:  Default [DF_tb_power_base]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_power] ADD  CONSTRAINT [DF_tb_power_base]  DEFAULT ((0)) FOR [base]
GO
/****** Object:  Default [DF_tb_stock_qty]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_stock] ADD  CONSTRAINT [DF_tb_stock_qty]  DEFAULT ((0)) FOR [qty]
GO
/****** Object:  Default [DF_tb_stock_price]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_stock] ADD  CONSTRAINT [DF_tb_stock_price]  DEFAULT ((0)) FOR [price]
GO
/****** Object:  Default [DF_tb_stock_averageprice]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_stock] ADD  CONSTRAINT [DF_tb_stock_averageprice]  DEFAULT ((0)) FOR [averageprice]
GO
/****** Object:  Default [DF_tb_stock_saleprice]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_stock] ADD  CONSTRAINT [DF_tb_stock_saleprice]  DEFAULT ((0)) FOR [saleprice]
GO
/****** Object:  Default [DF_tb_stock_stockcheck]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_stock] ADD  CONSTRAINT [DF_tb_stock_stockcheck]  DEFAULT ((0)) FOR [stockcheck]
GO
/****** Object:  Default [DF_tb_stock_upperlimit]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_stock] ADD  CONSTRAINT [DF_tb_stock_upperlimit]  DEFAULT ((0)) FOR [upperlimit]
GO
/****** Object:  Default [DF_tb_stock_lowerlimit]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_stock] ADD  CONSTRAINT [DF_tb_stock_lowerlimit]  DEFAULT ((0)) FOR [lowerlimit]
GO
/****** Object:  ForeignKey [FK_tb_currentaccount_tb_units]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_currentaccount]  WITH CHECK ADD  CONSTRAINT [FK_tb_currentaccount_tb_units] FOREIGN KEY([units])
REFERENCES [dbo].[tb_units] ([fullname])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tb_currentaccount] CHECK CONSTRAINT [FK_tb_currentaccount_tb_units]
GO
/****** Object:  ForeignKey [FK_tb_resell_detailed_tb_stock]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_resell_detailed]  WITH CHECK ADD  CONSTRAINT [FK_tb_resell_detailed_tb_stock] FOREIGN KEY([fullname])
REFERENCES [dbo].[tb_stock] ([fullname])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tb_resell_detailed] CHECK CONSTRAINT [FK_tb_resell_detailed_tb_stock]
GO
/****** Object:  ForeignKey [FK_tb_resell_main_tb_employee]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_resell_main]  WITH CHECK ADD  CONSTRAINT [FK_tb_resell_main_tb_employee] FOREIGN KEY([handle])
REFERENCES [dbo].[tb_employee] ([fullname])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tb_resell_main] CHECK CONSTRAINT [FK_tb_resell_main_tb_employee]
GO
/****** Object:  ForeignKey [FK_tb_resell_main_tb_units]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_resell_main]  WITH CHECK ADD  CONSTRAINT [FK_tb_resell_main_tb_units] FOREIGN KEY([units])
REFERENCES [dbo].[tb_units] ([fullname])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tb_resell_main] CHECK CONSTRAINT [FK_tb_resell_main_tb_units]
GO
/****** Object:  ForeignKey [FK_tb_rewarehouse_detailed_tb_stock]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_rewarehouse_detailed]  WITH CHECK ADD  CONSTRAINT [FK_tb_rewarehouse_detailed_tb_stock] FOREIGN KEY([fullname])
REFERENCES [dbo].[tb_stock] ([fullname])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tb_rewarehouse_detailed] CHECK CONSTRAINT [FK_tb_rewarehouse_detailed_tb_stock]
GO
/****** Object:  ForeignKey [FK_tb_rewarehouse_main_tb_employee]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_rewarehouse_main]  WITH CHECK ADD  CONSTRAINT [FK_tb_rewarehouse_main_tb_employee] FOREIGN KEY([handle])
REFERENCES [dbo].[tb_employee] ([fullname])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tb_rewarehouse_main] CHECK CONSTRAINT [FK_tb_rewarehouse_main_tb_employee]
GO
/****** Object:  ForeignKey [FK_tb_rewarehouse_main_tb_units]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_rewarehouse_main]  WITH CHECK ADD  CONSTRAINT [FK_tb_rewarehouse_main_tb_units] FOREIGN KEY([units])
REFERENCES [dbo].[tb_units] ([fullname])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tb_rewarehouse_main] CHECK CONSTRAINT [FK_tb_rewarehouse_main_tb_units]
GO
/****** Object:  ForeignKey [FK_tb_sell_detailed_tb_stock]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_sell_detailed]  WITH CHECK ADD  CONSTRAINT [FK_tb_sell_detailed_tb_stock] FOREIGN KEY([fullname])
REFERENCES [dbo].[tb_stock] ([fullname])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tb_sell_detailed] CHECK CONSTRAINT [FK_tb_sell_detailed_tb_stock]
GO
/****** Object:  ForeignKey [FK_tb_sell_main_tb_employee]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_sell_main]  WITH CHECK ADD  CONSTRAINT [FK_tb_sell_main_tb_employee] FOREIGN KEY([handle])
REFERENCES [dbo].[tb_employee] ([fullname])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tb_sell_main] CHECK CONSTRAINT [FK_tb_sell_main_tb_employee]
GO
/****** Object:  ForeignKey [FK_tb_sell_main_tb_units]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_sell_main]  WITH CHECK ADD  CONSTRAINT [FK_tb_sell_main_tb_units] FOREIGN KEY([units])
REFERENCES [dbo].[tb_units] ([fullname])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tb_sell_main] CHECK CONSTRAINT [FK_tb_sell_main_tb_units]
GO
/****** Object:  ForeignKey [FK_tb_warehouse_detailed_tb_stock1]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_warehouse_detailed]  WITH CHECK ADD  CONSTRAINT [FK_tb_warehouse_detailed_tb_stock1] FOREIGN KEY([fullname])
REFERENCES [dbo].[tb_stock] ([fullname])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tb_warehouse_detailed] CHECK CONSTRAINT [FK_tb_warehouse_detailed_tb_stock1]
GO
/****** Object:  ForeignKey [FK_tb_warehouse_main_tb_employee]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_warehouse_main]  WITH CHECK ADD  CONSTRAINT [FK_tb_warehouse_main_tb_employee] FOREIGN KEY([handle])
REFERENCES [dbo].[tb_employee] ([fullname])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tb_warehouse_main] CHECK CONSTRAINT [FK_tb_warehouse_main_tb_employee]
GO
/****** Object:  ForeignKey [FK_tb_warehouse_main_tb_units]    Script Date: 01/01/2017 11:57:41 ******/
ALTER TABLE [dbo].[tb_warehouse_main]  WITH CHECK ADD  CONSTRAINT [FK_tb_warehouse_main_tb_units] FOREIGN KEY([units])
REFERENCES [dbo].[tb_units] ([fullname])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tb_warehouse_main] CHECK CONSTRAINT [FK_tb_warehouse_main_tb_units]
GO
