IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[books]') AND type in (N'U'))
DROP TABLE [dbo].[books]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bookstore]') AND type in (N'U'))
DROP TABLE [dbo].[bookstore]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[complaints]') AND type in (N'U'))
DROP TABLE [dbo].[complaints]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[complaints_on_bookstore]') AND type in (N'U'))
DROP TABLE [dbo].[complaints_on_bookstore]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[complaints_on_orders]') AND type in (N'U'))
DROP TABLE [dbo].[complaints_on_orders]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customers]') AND type in (N'U'))
DROP TABLE [dbo].[customers]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[employees]') AND type in (N'U'))
DROP TABLE [dbo].[employees]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[items_in_orders_1]') AND type in (N'U'))
DROP TABLE [dbo].[items_in_orders_1]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[items_in_orders_2]') AND type in (N'U'))
DROP TABLE [dbo].[items_in_orders_2]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[items_in_orders_3]') AND type in (N'U'))
DROP TABLE [dbo].[items_in_orders_3]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[items_in_orders_4]') AND type in (N'U'))
DROP TABLE [dbo].[items_in_orders_4]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[magazines]') AND type in (N'U'))
DROP TABLE [dbo].[magazines]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[orders]') AND type in (N'U'))
DROP TABLE [dbo].[orders]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[orderstatus]') AND type in (N'U'))
DROP TABLE [dbo].[orderstatus]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[price_history]') AND type in (N'U'))
DROP TABLE [dbo].[price_history]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[publication]') AND type in (N'U'))
DROP TABLE [dbo].[publication]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stocks_in_bookstores]') AND type in (N'U'))
DROP TABLE [dbo].[stocks_in_bookstores]
GO
