/*
update sql
*/
alter table [Solutions] add [SerUseScript] varchar(20);
alter table [Solutions] add [CliUseScript] varchar(20);
alter table [Solutions] add [IsDParam] bit not null default(1);
alter table [Solutions] add [RespContentType] int not null default(0);
go

INSERT [dbo].[Solutions] ([SlnID], [SlnName], [Namespace], [RefNamespace], [Url], [GameID]) VALUES ('9', '登录服务器', 'ZyGames.AccountServer.Action', '', 'http://pass.scutgame.com/', '0', 'C#', 'Quick', '', '0');

INSERT [dbo].[enuminfo] ([id], [SlnID], [enumName], [enumDescription], [enumValueInfo]) VALUES ('1002', '9', 'MobileType', '使用的手机类型', '0:电脑PC\r\n1:iPod\r\n2:iPad\r\n3:iPhone(越狱)\r\n4:Phone\r\n5:Android\r\n6:Mac\r\n7:WindowsPhone7\r\n8:Unknow未知');
INSERT [dbo].[enuminfo] ([id], [SlnID], [enumName], [enumDescription], [enumValueInfo]) VALUES ('1003', '9', 'StateCode', '响应错误码', '0:  OK，成功的\r\n100:服务器异常\r\n101:签名错误\r\n102:无处理程序\r\n103:密码错误\r\n105:登录凭证无效\r\n106:登录凭证过期');

INSERT [dbo].[Contract] ([ID], [Descption], [ParentID], [SlnID], [Complated], [AgreementID], [VerId]) VALUES ('1001', '登陆接口', '1', '9', '1', '0', '0');
INSERT [dbo].[Contract] ([ID], [Descption], [ParentID], [SlnID], [Complated], [AgreementID], [VerId]) VALUES ('1002', '获取账号接口', '1', '9', '1', '0', '0');
INSERT [dbo].[Contract] ([ID], [Descption], [ParentID], [SlnID], [Complated], [AgreementID], [VerId]) VALUES ('1003', '注册接口', '1', '9', '1', '0', '0');
INSERT [dbo].[Contract] ([ID], [Descption], [ParentID], [SlnID], [Complated], [AgreementID], [VerId]) VALUES ('1005', '游客改密码接口', '1', '9', '1', '0', '0');

INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1001, 1, 'Handler', 2, '', 'Login', '1', '程序名', 2, 0, '2015-4-15 09:28:11', 0, '2015-4-15 09:28:26', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1001, 1, 'MobileType', 1, '', '', '1', '【MobileType】手机类型', 4, 0, '2015-4-15 09:55:23', 0, '1753-1-1 00:00:00', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1001, 1, 'Pid', 2, '', '', '1', '账号', 5, 0, '2015-4-15 10:05:32', 0, '2015-4-15 10:06:17', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1001, 1, 'Pwd', -1, '', '', '1', '密码', 6, 0, '2015-4-15 10:05:44', 0, '2015-4-15 10:06:06', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1001, 1, 'IMEI', 2, '', '', '', '手机设备ID，游客登录', 7, 0, '2015-4-15 10:06:00', 0, '2015-4-15 10:19:02', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1001, 1, 'ScreenX', 1, '', '', '', '手机屏幕宽度', 8, 0, '2015-4-15 10:06:44', 0, '2015-4-15 10:19:08', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1001, 1, 'ScreenY', 1, '', '', '', '手机屏幕高度', 9, 0, '2015-4-15 10:07:00', 0, '2015-4-15 10:19:12', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1001, 1, 'RetailID', 2, '', '', '', '客户打包的渠道编号', 10, 0, '2015-4-15 10:07:19', 0, '2015-4-15 10:19:18', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1001, 2, 'Token', 2, '', '', '1', '本次登录授权的凭证', 1, 0, '2015-4-15 10:08:02', 0, '1753-1-1 00:00:00', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1001, 2, 'UserID', 1, '', '', '1', '用户ID', 2, 0, '2015-4-15 10:08:19', 0, '1753-1-1 00:00:00', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1002, 2, 'PassportId', 2, '', '', '', '系统分配账号', 1, 0, '2015-4-15 10:11:46', 0, '1753-1-1 00:00:00', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1002, 2, 'Password', 2, '', '', '', '6位随机密码', 2, 0, '2015-4-15 10:12:10', 0, '1753-1-1 00:00:00', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1002, 1, 'Handler', 2, '', 'Passport', '1', '程序名', 2, 0, '2015-4-15 10:12:47', 0, '2015-4-15 10:23:34', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1002, 1, 'IMEI', 2, '', '', '', '手机设备识别码，可以为空', 3, 0, '2015-4-15 10:13:49', 0, '1753-1-1 00:00:00', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1003, 1, 'Handler', 2, '', 'Regist', '1', '程序名', 2, 0, '2015-4-15 10:15:17', 0, '2015-4-15 10:16:49', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1003, 1, 'MobileType', 1, '', '', '1', '【MobileType】手机类型', 4, 0, '2015-4-15 10:15:17', 0, '1753-1-1 00:00:00', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1003, 1, 'Pid', 2, '', '', '1', '账号', 5, 0, '2015-4-15 10:15:17', 0, '1753-1-1 00:00:00', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1003, 1, 'Pwd', -1, '', '', '1', '密码', 6, 0, '2015-4-15 10:15:17', 0, '1753-1-1 00:00:00', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1003, 1, 'IMEI', 2, '', '', '', '手机设备ID，游客登录', 7, 0, '2015-4-15 10:15:17', 0, '2015-4-15 10:17:40', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1003, 1, 'ScreenX', 1, '', '', '', '手机屏幕宽度', 8, 0, '2015-4-15 10:15:17', 0, '2015-4-15 10:16:59', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1003, 1, 'ScreenY', 1, '', '', '', '手机屏幕高度', 9, 0, '2015-4-15 10:15:17', 0, '2015-4-15 10:17:03', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1003, 1, 'RetailID', 2, '', '', '', '客户打包的渠道编号', 10, 0, '2015-4-15 10:15:17', 0, '2015-4-15 10:18:50', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1003, 2, 'Token', 2, '', '', '1', '本次登录授权的凭证', 1, 0, '2015-4-15 10:15:17', 0, '1753-1-1 00:00:00', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1003, 2, 'UserID', 1, '', '', '1', '用户ID', 2, 0, '2015-4-15 10:15:17', 0, '1753-1-1 00:00:00', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1005, 1, 'Handler', 2, '', 'Password', '1', '程序名', 2, 0, '2015-4-15 10:21:37', 0, '2015-4-15 10:21:43', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1005, 1, 'PassportId', 1, '', '', '1', '账号', 3, 0, '2015-4-15 10:22:12', 0, '1753-1-1 00:00:00', 9, 0, 0, 0);
INSERT [dbo].[ParamInfo] ([ContractID], [ParamType], [Field], [FieldType], [Descption], [FieldValue], [Required], [Remark], [SortID], [Creator], [CreateDate], [Modifier], [ModifyDate], [SlnID], [MinValue], [MaxValue], [VerId]) VALUES (1005, 1, 'Password', 1, '', '', '1', '密码', 4, 0, '2015-4-15 10:22:24', 0, '1753-1-1 00:00:00', 9, 0, 0, 0);

go

