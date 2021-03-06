USE [Hospitalmanagement]
GO
/****** Object:  Table [dbo].[hospital_bloodtest]    Script Date: 4/21/2015 5:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hospital_bloodtest](
	[patienttype] [varchar](20) NULL,
	[patientid] [int] NULL,
	[patientname] [varchar](20) NULL,
	[mediclatestype] [varchar](20) NULL,
	[bloodgroup] [varchar](20) NULL,
	[haemoglobin] [varchar](20) NULL,
	[bloodsugar] [varchar](20) NULL,
	[sacid] [varchar](20) NULL,
	[description] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hospital_dischargesummary]    Script Date: 4/21/2015 5:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hospital_dischargesummary](
	[patientid] [int] NULL,
	[patientname] [varchar](20) NULL,
	[joindate] [datetime] NULL,
	[dischargedate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hospital_doctorsignup]    Script Date: 4/21/2015 5:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hospital_doctorsignup](
	[name] [varchar](20) NULL,
	[loginid] [varchar](20) NULL,
	[password] [varchar](20) NULL,
	[department] [varchar](20) NULL,
	[specialization] [varchar](20) NULL,
	[phonenumber] [bigint] NULL,
	[address] [varchar](20) NULL,
	[email] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hospital_empsignup]    Script Date: 4/21/2015 5:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hospital_empsignup](
	[name] [varchar](20) NULL,
	[loginid] [varchar](20) NULL,
	[password] [varchar](20) NULL,
	[department] [varchar](20) NULL,
	[phonenumber] [bigint] NULL,
	[address] [varchar](20) NULL,
	[email] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hospital_inpatient]    Script Date: 4/21/2015 5:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hospital_inpatient](
	[patientname] [varchar](20) NULL,
	[patientid] [int] IDENTITY(1001,1) NOT NULL,
	[gender] [varchar](20) NULL,
	[age] [int] NULL,
	[address] [varchar](20) NULL,
	[phoneres] [bigint] NULL,
	[phonemob] [bigint] NULL,
	[maritual] [varchar](20) NULL,
	[occupation] [varchar](20) NULL,
	[admid] [int] NULL,
	[admdate] [datetime] NULL,
	[admtime] [datetime] NULL,
	[status] [varchar](20) NULL,
	[symtoms] [varchar](20) NULL,
	[department] [varchar](20) NULL,
	[wardno] [int] NULL,
	[bedno] [int] NULL,
	[doctor] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[patientid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hospital_operation]    Script Date: 4/21/2015 5:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hospital_operation](
	[patienttype] [varchar](20) NULL,
	[patientid] [int] NULL,
	[patientname] [varchar](20) NULL,
	[refdoctor] [varchar](20) NULL,
	[operationtype] [varchar](20) NULL,
	[operatonresult] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hospital_outpatient]    Script Date: 4/21/2015 5:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hospital_outpatient](
	[patientname] [varchar](20) NULL,
	[patientid] [int] IDENTITY(2001,1) NOT NULL,
	[gender] [varchar](20) NULL,
	[age] [int] NULL,
	[address] [varchar](20) NULL,
	[assigndoctor] [varchar](20) NULL,
	[phoneres] [bigint] NULL,
	[phonemob] [bigint] NULL,
	[opdate] [datetime] NULL,
	[department] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[patientid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hospital_patientinfo]    Script Date: 4/21/2015 5:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hospital_patientinfo](
	[pid] [int] NULL,
	[patientname] [varchar](20) NULL,
	[age] [varchar](20) NULL,
	[department] [varchar](20) NULL,
	[doctor] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hospital_pharmacy]    Script Date: 4/21/2015 5:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hospital_pharmacy](
	[patienttype] [varchar](20) NULL,
	[patientid] [int] NULL,
	[department] [varchar](20) NULL,
	[patientname] [varchar](20) NULL,
	[medicine] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hospital_surgeryinfo]    Script Date: 4/21/2015 5:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hospital_surgeryinfo](
	[pid] [varchar](20) NULL,
	[patientname] [varchar](20) NULL,
	[age] [int] NULL,
	[department] [varchar](20) NULL,
	[doctor] [varchar](20) NULL,
	[surgerydate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hospital_urintest]    Script Date: 4/21/2015 5:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hospital_urintest](
	[patienttype] [varchar](20) NULL,
	[patientid] [int] NULL,
	[patientname] [varchar](20) NULL,
	[mediclatestype] [varchar](20) NULL,
	[color] [varchar](20) NULL,
	[clarity] [varchar](20) NULL,
	[odor] [varchar](20) NULL,
	[specificgravity] [varchar](20) NULL,
	[glucose] [varchar](20) NULL,
	[description] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[hospital_dischargesummary] ([patientid], [patientname], [joindate], [dischargedate]) VALUES (2001, N'test', CAST(N'1900-01-01 00:00:00.000' AS DateTime), CAST(N'2015-04-07 00:00:00.000' AS DateTime))
INSERT [dbo].[hospital_dischargesummary] ([patientid], [patientname], [joindate], [dischargedate]) VALUES (2001, N'test', CAST(N'1900-01-01 00:00:00.000' AS DateTime), CAST(N'2015-04-07 00:00:00.000' AS DateTime))
INSERT [dbo].[hospital_dischargesummary] ([patientid], [patientname], [joindate], [dischargedate]) VALUES (2001, N'test', CAST(N'1900-01-01 00:00:00.000' AS DateTime), CAST(N'2015-04-07 00:00:00.000' AS DateTime))
INSERT [dbo].[hospital_dischargesummary] ([patientid], [patientname], [joindate], [dischargedate]) VALUES (2001, N'test', CAST(N'1900-01-01 00:00:00.000' AS DateTime), CAST(N'2015-04-07 00:00:00.000' AS DateTime))
INSERT [dbo].[hospital_dischargesummary] ([patientid], [patientname], [joindate], [dischargedate]) VALUES (2001, N'test', CAST(N'1900-01-01 00:00:00.000' AS DateTime), CAST(N'1900-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[hospital_dischargesummary] ([patientid], [patientname], [joindate], [dischargedate]) VALUES (2001, N'test', CAST(N'1900-01-01 00:00:00.000' AS DateTime), CAST(N'1900-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[hospital_dischargesummary] ([patientid], [patientname], [joindate], [dischargedate]) VALUES (2001, N'test', CAST(N'1900-01-01 00:00:00.000' AS DateTime), CAST(N'2015-04-14 00:00:00.000' AS DateTime))
INSERT [dbo].[hospital_dischargesummary] ([patientid], [patientname], [joindate], [dischargedate]) VALUES (2001, N'test', CAST(N'1900-01-01 00:00:00.000' AS DateTime), CAST(N'2015-04-14 00:00:00.000' AS DateTime))
INSERT [dbo].[hospital_dischargesummary] ([patientid], [patientname], [joindate], [dischargedate]) VALUES (2001, N'test', CAST(N'1900-01-01 00:00:00.000' AS DateTime), CAST(N'2015-04-14 00:00:00.000' AS DateTime))
INSERT [dbo].[hospital_dischargesummary] ([patientid], [patientname], [joindate], [dischargedate]) VALUES (2001, N'test', CAST(N'1900-01-01 00:00:00.000' AS DateTime), CAST(N'2015-04-14 00:00:00.000' AS DateTime))
INSERT [dbo].[hospital_doctorsignup] ([name], [loginid], [password], [department], [specialization], [phonenumber], [address], [email]) VALUES (N'Dr. New', N'dr', N'123', N'Test Departmrnt', N'Surgery', 9999999999, N'Bangalore', N'dr@gmail.com')
INSERT [dbo].[hospital_empsignup] ([name], [loginid], [password], [department], [phonenumber], [address], [email]) VALUES (N'new emp', N'emp', N'123', N'Employee', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[hospital_inpatient] ON 

INSERT [dbo].[hospital_inpatient] ([patientname], [patientid], [gender], [age], [address], [phoneres], [phonemob], [maritual], [occupation], [admid], [admdate], [admtime], [status], [symtoms], [department], [wardno], [bedno], [doctor]) VALUES (N'a', 1001, N'm', 88, N'sdfsd', 87654321, 9999999999, N'y', N'n', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[hospital_inpatient] OFF
INSERT [dbo].[hospital_operation] ([patienttype], [patientid], [patientname], [refdoctor], [operationtype], [operatonresult]) VALUES (N'out-patient', 2001, N'test', N'no', N'heart', N'success')
INSERT [dbo].[hospital_operation] ([patienttype], [patientid], [patientname], [refdoctor], [operationtype], [operatonresult]) VALUES (N'In-Patient', 1001, N'a', N'dfh', N'Heart', N'Success')
SET IDENTITY_INSERT [dbo].[hospital_outpatient] ON 

INSERT [dbo].[hospital_outpatient] ([patientname], [patientid], [gender], [age], [address], [assigndoctor], [phoneres], [phonemob], [opdate], [department]) VALUES (N'test', 2001, N'm', 99, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[hospital_outpatient] OFF
INSERT [dbo].[hospital_pharmacy] ([patienttype], [patientid], [department], [patientname], [medicine]) VALUES (N'In-Patient', 1001, N'n', N'a', N'n')
INSERT [dbo].[hospital_pharmacy] ([patienttype], [patientid], [department], [patientname], [medicine]) VALUES (N'In-Patient', 1001, N'', N'a', N'')
INSERT [dbo].[hospital_pharmacy] ([patienttype], [patientid], [department], [patientname], [medicine]) VALUES (N'In-Patient', 1001, N'', N'a', N'n')
INSERT [dbo].[hospital_pharmacy] ([patienttype], [patientid], [department], [patientname], [medicine]) VALUES (N'In-Patient', 1001, N'', N'a', N'n')
INSERT [dbo].[hospital_pharmacy] ([patienttype], [patientid], [department], [patientname], [medicine]) VALUES (N'In-Patient', 1001, N'', N'a', N'n')
ALTER TABLE [dbo].[hospital_patientinfo]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[hospital_inpatient] ([patientid])
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_bloodtest]    Script Date: 4/21/2015 5:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_bloodtest](@patienttype varchar(20),@patientid int,@patientname varchar(20),@mediclatestype varchar(20),
@bloodgroup varchar(20),@haemoglobin varchar(20),@bloodsugar varchar(20),@sacid varchar(20),@description varchar(40))
as
begin
insert into hospital_bloodtest values(@patienttype,@patientid,@patientname,@mediclatestype,@bloodgroup,@haemoglobin,
@bloodsugar,@sacid,@description)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_dischargesummary]    Script Date: 4/21/2015 5:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_dischargesummary](@patientid int,@patientname varchar(20),
@joindate datetime,@dischargedate datetime)
as
begin
insert into hospital_dischargesummary values(@patientid,@patientname,@joindate,@dischargedate)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_doctorforgot]    Script Date: 4/21/2015 5:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_hospital_doctorforgot](@loginid varchar(20),@password varchar(20) out)    
as    
begin    
select @password=password from hospital_doctorsignup where loginid=@loginid  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_doctorsignup]    Script Date: 4/21/2015 5:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_doctorsignup](@name varchar(20),@loginid varchar(20),@password varchar(20),
@department varchar(20),@specialization varchar(20),@phonenumber varchar(20),@address varchar(20),@email varchar(20))
as
begin
insert into hospital_doctorsignup values(@name,@loginid,@password,@department,@specialization,@phonenumber,@address,@email)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_empforgot]    Script Date: 4/21/2015 5:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_hospital_empforgot](@loginid varchar(20),@password varchar(20) out)    
as    
begin    
select @password=password from hospital_empsignup where loginid=@loginid  
end  
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_empsignup]    Script Date: 4/21/2015 5:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_empsignup](@name varchar(20),@loginid varchar(20),@password varchar(20),
@department varchar(20),@phonenumber varchar(20),@address varchar(20),@email varchar(20))
as
begin
insert into hospital_empsignup values(@name,@loginid,@password,@department,@phonenumber,@address,@email)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_inpatient]    Script Date: 4/21/2015 5:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_inpatient](@patientname varchar(20),@gender varchar(20),@age int,@address varchar(20),
@phoneres bigint,@phonemob bigint,@maritual varchar(20),@occupation varchar(20),@admid int,@admdate datetime,@admtime datetime,
@status varchar(20),@symtoms varchar(20),@department varchar(20),@wardno int,@bedno int,@doctor varchar(20))
as
begin
insert into hospital_inpatient values(@patientname,@gender,@age,@address,@phoneres,@phonemob,@maritual,@occupation,@admid,
@admdate,@admtime,@status,@symtoms,@department,@wardno,@bedno,@doctor)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_medicaltestout]    Script Date: 4/21/2015 5:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_medicaltestout](@pid int)  
as  
begin  
select patientname from hospital_outpatient where patientid=@pid  
end 
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_operation]    Script Date: 4/21/2015 5:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_operation](@patienttype varchar(20),@patientid int,@patientname varchar(20),@refdoctor varchar(20),
@operationtype varchar(20),@operatonresult varchar(20))
as
begin
insert into hospital_operation values(@patienttype,@patientid,@patientname,@refdoctor,@operationtype,@operatonresult)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_outpatient]    Script Date: 4/21/2015 5:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_outpatient](@patientname varchar(20) ,@gender varchar(20),@age int,@address varchar(20),
@assigndoctor varchar(20),@phoneres bigint,@phonemob bigint,@opdate datetime,@department varchar(20))
as
begin
insert into hospital_outpatient values(@patientname,@gender,@age,@address,@assigndoctor,@phoneres,@phonemob,@opdate,@department)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_patientinfoenter]    Script Date: 4/21/2015 5:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_patientinfoenter](@pid int,@patientname varchar(20),@age varchar(20),@department varchar(20),
@doctor varchar(20))
as
begin
insert into hospital_patientinfo values(@pid,@patientname,@age,@department,@doctor)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_pharmacy]    Script Date: 4/21/2015 5:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_pharmacy](@patienttype varchar(20),@patientid int,@department varchar(20),@patientname varchar(20),
@medicine varchar(20))
as
begin
insert into hospital_pharmacy values(@patienttype,@patientid,@department,@patientname,@medicine)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_surgeryinfo]    Script Date: 4/21/2015 5:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_surgeryinfo](@pid int,@patientname varchar(20),@age varchar(20),@department varchar(20),@doctor varchar(20),
@surgerydate datetime)  
as  
begin  
insert into hospital_surgeryinfo values(@pid,@patientname,@age,@department,@doctor,@surgerydate)  
end 
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_urintest]    Script Date: 4/21/2015 5:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_urintest](@patienttype varchar(20),@patientid int,@patientname varchar(20),@mediclatestype varchar(20),
@color varchar(20),@clarity varchar(20),@odor varchar(20),@specificgravity varchar(20),@glucose varchar(40),@description varchar(40))
as
begin
insert into hospital_urintest values(@patienttype,@patientid,@patientname,@mediclatestype,@color,@clarity,
@odor,@specificgravity,@glucose,@description)
end
GO
