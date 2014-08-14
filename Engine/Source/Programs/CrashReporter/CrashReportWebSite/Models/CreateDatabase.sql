USE [CrashReport]਍䜀伀ഀഀ
/****** Object:  Table [dbo].[Users]    Script Date: 27/01/2014 13:59:11 ******/਍匀䔀吀 䄀一匀䤀开一唀䰀䰀匀 伀一ഀഀ
GO਍匀䔀吀 儀唀伀吀䔀䐀开䤀䐀䔀一吀䤀䘀䤀䔀刀 伀一ഀഀ
GO਍匀䔀吀 䄀一匀䤀开倀䄀䐀䐀䤀一䜀 伀一ഀഀ
GO਍䌀刀䔀䄀吀䔀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀唀猀攀爀猀崀⠀ഀഀ
	[UserName] [varchar](64) NOT NULL,਍ऀ嬀唀猀攀爀䜀爀漀甀瀀崀 嬀瘀愀爀挀栀愀爀崀⠀㔀　⤀ 一伀吀 一唀䰀䰀Ⰰഀഀ
	[UserGroupId] [int] NULL,਍ 䌀伀一匀吀刀䄀䤀一吀 嬀倀䬀开唀猀攀爀猀崀 倀刀䤀䴀䄀刀夀 䬀䔀夀 䌀䰀唀匀吀䔀刀䔀䐀 ഀഀ
(਍ऀ嬀唀猀攀爀一愀洀攀崀 䄀匀䌀ഀഀ
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY  = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]਍⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
GO਍匀䔀吀 䄀一匀䤀开倀䄀䐀䐀䤀一䜀 伀䘀䘀ഀഀ
GO਍⼀⨀⨀⨀⨀⨀⨀ 伀戀樀攀挀琀㨀  吀愀戀氀攀 嬀搀戀漀崀⸀嬀䌀爀愀猀栀攀猀崀    匀挀爀椀瀀琀 䐀愀琀攀㨀 ㈀㜀⼀　㄀⼀㈀　㄀㐀 ㄀㌀㨀㔀㜀㨀㈀㐀 ⨀⨀⨀⨀⨀⨀⼀ഀഀ
SET ANSI_NULLS ON਍䜀伀ഀഀ
SET QUOTED_IDENTIFIER ON਍䜀伀ഀഀ
SET ANSI_PADDING ON਍䜀伀ഀഀ
CREATE TABLE [dbo].[Crashes](਍ऀ嬀䤀搀崀 嬀椀渀琀崀 䤀䐀䔀一吀䤀吀夀⠀㄀Ⰰ㄀⤀ 一伀吀 一唀䰀䰀Ⰰഀഀ
	[Title] [nchar](20) NULL,਍ऀ嬀匀甀洀洀愀爀礀崀 嬀瘀愀爀挀栀愀爀崀⠀㔀㄀㈀⤀ 一唀䰀䰀Ⰰഀഀ
	[GameName] [varchar](64) NULL,਍ऀ嬀匀琀愀琀甀猀崀 嬀瘀愀爀挀栀愀爀崀⠀㘀㐀⤀ 一唀䰀䰀Ⰰഀഀ
	[TimeOfCrash] [datetime] NULL,਍ऀ嬀䌀栀愀渀最攀䰀椀猀琀嘀攀爀猀椀漀渀崀 嬀瘀愀爀挀栀愀爀崀⠀㘀㐀⤀ 一唀䰀䰀Ⰰഀഀ
	[PlatformName] [varchar](64) NULL,਍ऀ嬀䔀渀最椀渀攀䴀漀搀攀崀 嬀瘀愀爀挀栀愀爀崀⠀㘀㐀⤀ 一唀䰀䰀Ⰰഀഀ
	[Description] [varchar](512) NULL,਍ऀ嬀刀愀眀䌀愀氀氀匀琀愀挀欀崀 嬀瘀愀爀挀栀愀爀崀⠀洀愀砀⤀ 一唀䰀䰀Ⰰഀഀ
	[Pattern] [varchar](800) NULL,਍ऀ嬀䌀漀洀洀愀渀搀䰀椀渀攀崀 嬀瘀愀爀挀栀愀爀崀⠀㔀㄀㈀⤀ 一唀䰀䰀Ⰰഀഀ
	[ComputerName] [varchar](64) NULL,਍ऀ嬀匀攀氀攀挀琀攀搀崀 嬀戀椀琀崀 一唀䰀䰀Ⰰഀഀ
	[FixedChangeList] [varchar](64) NULL,਍ऀ嬀䰀愀渀最甀愀最攀䔀砀琀崀 嬀瘀愀爀挀栀愀爀崀⠀㘀㐀⤀ 一唀䰀䰀Ⰰഀഀ
	[Module] [varchar](128) NULL,਍ऀ嬀䈀甀椀氀搀嘀攀爀猀椀漀渀崀 嬀瘀愀爀挀栀愀爀崀⠀㄀㈀㠀⤀ 一唀䰀䰀Ⰰഀഀ
	[BaseDir] [varchar](512) NULL,਍ऀ嬀嘀攀爀猀椀漀渀崀 嬀椀渀琀崀 一唀䰀䰀Ⰰഀഀ
	[UserName] [varchar](64) NULL,਍ऀ嬀吀吀倀䤀䐀崀 嬀瘀愀爀挀栀愀爀崀⠀㘀㐀⤀ 一唀䰀䰀Ⰰഀഀ
	[AutoReporterID] [int] NULL,਍ऀ嬀倀爀漀挀攀猀猀攀搀崀 嬀戀椀琀崀 一唀䰀䰀Ⰰഀഀ
	[HasLogFile] [bit] NULL,਍ऀ嬀䠀愀猀䴀椀渀椀䐀甀洀瀀䘀椀氀攀崀 嬀戀椀琀崀 一唀䰀䰀Ⰰഀഀ
	[HasVideoFile] [bit] NULL,਍ऀ嬀䠀愀猀䐀椀愀最渀漀猀琀椀挀猀䘀椀氀攀崀 嬀戀椀琀崀 一唀䰀䰀Ⰰഀഀ
	[HasNewLogFile] [bit] NULL,਍ऀ嬀䈀爀愀渀挀栀崀 嬀瘀愀爀挀栀愀爀崀⠀㌀㈀⤀ 一唀䰀䰀Ⰰഀഀ
	[CrashType] [smallint] NOT NULL,਍ऀ嬀唀猀攀爀一愀洀攀䤀搀崀 嬀椀渀琀崀 一唀䰀䰀Ⰰഀഀ
	[HasMetaData] [bit] NULL,਍ऀ嬀匀漀甀爀挀攀䌀漀渀琀攀砀琀崀 嬀瘀愀爀挀栀愀爀崀⠀洀愀砀⤀ 一唀䰀䰀Ⰰഀഀ
	[EpicAccountId] [varchar](64) NULL,਍ऀ嬀䔀渀最椀渀攀嘀攀爀猀椀漀渀崀 嬀瘀愀爀挀栀愀爀崀⠀㘀㐀⤀ 一唀䰀䰀Ⰰഀഀ
 CONSTRAINT [PK_Crashes] PRIMARY KEY CLUSTERED ਍⠀ഀഀ
	[Id] ASC਍⤀圀䤀吀䠀 ⠀倀䄀䐀开䤀一䐀䔀堀 㴀 伀䘀䘀Ⰰ 匀吀䄀吀䤀匀吀䤀䌀匀开一伀刀䔀䌀伀䴀倀唀吀䔀 㴀 伀䘀䘀Ⰰ 䤀䜀一伀刀䔀开䐀唀倀开䬀䔀夀 㴀 伀䘀䘀Ⰰ 䄀䰀䰀伀圀开刀伀圀开䰀伀䌀䬀匀 㴀 伀一Ⰰ 䄀䰀䰀伀圀开倀䄀䜀䔀开䰀伀䌀䬀匀 㴀 伀一⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]਍䜀伀ഀഀ
SET ANSI_PADDING OFF਍䜀伀ഀഀ
਍䔀堀䔀䌀 猀礀猀⸀猀瀀开愀搀搀攀砀琀攀渀搀攀搀瀀爀漀瀀攀爀琀礀 䀀渀愀洀攀㴀一✀䴀匀开䐀攀猀挀爀椀瀀琀椀漀渀✀Ⰰ 䀀瘀愀氀甀攀㴀一✀一伀吀 唀匀䔀䐀 伀刀 伀䈀匀伀䰀䔀吀䔀✀ Ⰰ 䀀氀攀瘀攀氀　琀礀瀀攀㴀一✀匀䌀䠀䔀䴀䄀✀Ⰰ䀀氀攀瘀攀氀　渀愀洀攀㴀一✀搀戀漀✀Ⰰ 䀀氀攀瘀攀氀㄀琀礀瀀攀㴀一✀吀䄀䈀䰀䔀✀Ⰰ䀀氀攀瘀攀氀㄀渀愀洀攀㴀一✀䌀爀愀猀栀攀猀✀Ⰰ 䀀氀攀瘀攀氀㈀琀礀瀀攀㴀一✀䌀伀䰀唀䴀一✀Ⰰ䀀氀攀瘀攀氀㈀渀愀洀攀㴀一✀吀椀琀氀攀✀ഀഀ
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NOT USED OR OBSOLETE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Crashes', @level2type=N'COLUMN',@level2name=N'Selected'਍䔀堀䔀䌀 猀礀猀⸀猀瀀开愀搀搀攀砀琀攀渀搀攀搀瀀爀漀瀀攀爀琀礀 䀀渀愀洀攀㴀一✀䴀匀开䐀攀猀挀爀椀瀀琀椀漀渀✀Ⰰ 䀀瘀愀氀甀攀㴀一✀一伀吀 唀匀䔀䐀 伀刀 伀䈀匀伀䰀䔀吀䔀✀ Ⰰ 䀀氀攀瘀攀氀　琀礀瀀攀㴀一✀匀䌀䠀䔀䴀䄀✀Ⰰ䀀氀攀瘀攀氀　渀愀洀攀㴀一✀搀戀漀✀Ⰰ 䀀氀攀瘀攀氀㄀琀礀瀀攀㴀一✀吀䄀䈀䰀䔀✀Ⰰ䀀氀攀瘀攀氀㄀渀愀洀攀㴀一✀䌀爀愀猀栀攀猀✀Ⰰ 䀀氀攀瘀攀氀㈀琀礀瀀攀㴀一✀䌀伀䰀唀䴀一✀Ⰰ䀀氀攀瘀攀氀㈀渀愀洀攀㴀一✀嘀攀爀猀椀漀渀✀ഀഀ
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NOT USED OR OBSOLETE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Crashes', @level2type=N'COLUMN',@level2name=N'AutoReporterID'਍䔀堀䔀䌀 猀礀猀⸀猀瀀开愀搀搀攀砀琀攀渀搀攀搀瀀爀漀瀀攀爀琀礀 䀀渀愀洀攀㴀一✀䴀匀开䐀攀猀挀爀椀瀀琀椀漀渀✀Ⰰ 䀀瘀愀氀甀攀㴀一✀一伀吀 唀匀䔀䐀 伀刀 伀䈀匀伀䰀䔀吀䔀✀ Ⰰ 䀀氀攀瘀攀氀　琀礀瀀攀㴀一✀匀䌀䠀䔀䴀䄀✀Ⰰ䀀氀攀瘀攀氀　渀愀洀攀㴀一✀搀戀漀✀Ⰰ 䀀氀攀瘀攀氀㄀琀礀瀀攀㴀一✀吀䄀䈀䰀䔀✀Ⰰ䀀氀攀瘀攀氀㄀渀愀洀攀㴀一✀䌀爀愀猀栀攀猀✀Ⰰ 䀀氀攀瘀攀氀㈀琀礀瀀攀㴀一✀䌀伀䰀唀䴀一✀Ⰰ䀀氀攀瘀攀氀㈀渀愀洀攀㴀一✀倀爀漀挀攀猀猀攀搀✀ഀഀ
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NOT USED OR OBSOLETE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Crashes', @level2type=N'COLUMN',@level2name=N'HasDiagnosticsFile'਍䔀堀䔀䌀 猀礀猀⸀猀瀀开愀搀搀攀砀琀攀渀搀攀搀瀀爀漀瀀攀爀琀礀 䀀渀愀洀攀㴀一✀䴀匀开䐀攀猀挀爀椀瀀琀椀漀渀✀Ⰰ 䀀瘀愀氀甀攀㴀一✀一伀吀 唀匀䔀䐀 伀刀 伀䈀匀伀䰀䔀吀䔀✀ Ⰰ 䀀氀攀瘀攀氀　琀礀瀀攀㴀一✀匀䌀䠀䔀䴀䄀✀Ⰰ䀀氀攀瘀攀氀　渀愀洀攀㴀一✀搀戀漀✀Ⰰ 䀀氀攀瘀攀氀㄀琀礀瀀攀㴀一✀吀䄀䈀䰀䔀✀Ⰰ䀀氀攀瘀攀氀㄀渀愀洀攀㴀一✀䌀爀愀猀栀攀猀✀Ⰰ 䀀氀攀瘀攀氀㈀琀礀瀀攀㴀一✀䌀伀䰀唀䴀一✀Ⰰ䀀氀攀瘀攀氀㈀渀愀洀攀㴀一✀䠀愀猀一攀眀䰀漀最䘀椀氀攀✀ഀഀ
਍䔀堀䔀䌀 猀礀猀⸀猀瀀开愀搀搀攀砀琀攀渀搀攀搀瀀爀漀瀀攀爀琀礀 䀀渀愀洀攀㴀一✀䴀匀开䐀攀猀挀爀椀瀀琀椀漀渀✀Ⰰ 䀀瘀愀氀甀攀㴀一✀吀栀攀ꀀ渀愀洀攀ꀀ漀昀ꀀ琀栀攀ꀀ最愀洀攀ꀀ琀栀愀琀ꀀ挀爀愀猀栀攀搀⸀ ⠀䘀䌀爀愀猀栀䐀攀猀挀爀椀瀀琀椀漀渀⸀䜀愀洀攀一愀洀攀⤀✀ Ⰰ 䀀氀攀瘀攀氀　琀礀瀀攀㴀一✀匀䌀䠀䔀䴀䄀✀Ⰰ䀀氀攀瘀攀氀　渀愀洀攀㴀一✀搀戀漀✀Ⰰ 䀀氀攀瘀攀氀㄀琀礀瀀攀㴀一✀吀䄀䈀䰀䔀✀Ⰰ䀀氀攀瘀攀氀㄀渀愀洀攀㴀一✀䌀爀愀猀栀攀猀✀Ⰰ 䀀氀攀瘀攀氀㈀琀礀瀀攀㴀一✀䌀伀䰀唀䴀一✀Ⰰ䀀氀攀瘀攀氀㈀渀愀洀攀㴀一✀䜀愀洀攀一愀洀攀✀ഀഀ
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The mode the game was in e.g. editor. (FCrashDescription.EngineMode)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Crashes', @level2type=N'COLUMN',@level2name=N'EngineMode'਍䔀堀䔀䌀 猀礀猀⸀猀瀀开愀搀搀攀砀琀攀渀搀攀搀瀀爀漀瀀攀爀琀礀 䀀渀愀洀攀㴀一✀䴀匀开䐀攀猀挀爀椀瀀琀椀漀渀✀Ⰰ 䀀瘀愀氀甀攀㴀一✀吀栀攀ꀀ瀀氀愀琀昀漀爀洀ꀀ琀栀愀琀ꀀ挀爀愀猀栀攀搀ꀀ攀⸀最⸀ꀀ圀椀渀㘀㐀⸀ ⠀䘀䌀爀愀猀栀䐀攀猀挀爀椀瀀琀椀漀渀⸀倀氀愀琀昀漀爀洀⤀✀ Ⰰ 䀀氀攀瘀攀氀　琀礀瀀攀㴀一✀匀䌀䠀䔀䴀䄀✀Ⰰ䀀氀攀瘀攀氀　渀愀洀攀㴀一✀搀戀漀✀Ⰰ 䀀氀攀瘀攀氀㄀琀礀瀀攀㴀一✀吀䄀䈀䰀䔀✀Ⰰ䀀氀攀瘀攀氀㄀渀愀洀攀㴀一✀䌀爀愀猀栀攀猀✀Ⰰ 䀀氀攀瘀攀氀㈀琀礀瀀攀㴀一✀䌀伀䰀唀䴀一✀Ⰰ䀀氀攀瘀攀氀㈀渀愀洀攀㴀一✀倀氀愀琀昀漀爀洀一愀洀攀✀ഀഀ
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Encoded engine version.  BuildVersion-BuiltFromCL-BranchName E.g. 4.3.0.0-2215663+UE4-Releases+4.3 (FCrashDescription.EngineVersion)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Crashes', @level2type=N'COLUMN',@level2name=N'EngineVersion'਍䔀堀䔀䌀 猀礀猀⸀猀瀀开愀搀搀攀砀琀攀渀搀攀搀瀀爀漀瀀攀爀琀礀 䀀渀愀洀攀㴀一✀䴀匀开䐀攀猀挀爀椀瀀琀椀漀渀✀Ⰰ 䀀瘀愀氀甀攀㴀一✀吀栀攀ꀀ琀栀爀攀攀ꀀ挀漀洀瀀漀渀攀渀琀ꀀ瘀攀爀猀椀漀渀ꀀ漀昀ꀀ琀栀攀ꀀ愀瀀瀀ꀀ攀⸀最⸀ꀀ㐀⸀㐀⸀㄀ ⠀䘀䌀爀愀猀栀䐀攀猀挀爀椀瀀琀椀漀渀⸀䈀甀椀氀搀嘀攀爀猀椀漀渀⤀✀ Ⰰ 䀀氀攀瘀攀氀　琀礀瀀攀㴀一✀匀䌀䠀䔀䴀䄀✀Ⰰ䀀氀攀瘀攀氀　渀愀洀攀㴀一✀搀戀漀✀Ⰰ 䀀氀攀瘀攀氀㄀琀礀瀀攀㴀一✀吀䄀䈀䰀䔀✀Ⰰ䀀氀攀瘀攀氀㄀渀愀洀攀㴀一✀䌀爀愀猀栀攀猀✀Ⰰ 䀀氀攀瘀攀氀㈀琀礀瀀攀㴀一✀䌀伀䰀唀䴀一✀Ⰰ䀀氀攀瘀攀氀㈀渀愀洀攀㴀一✀䈀甀椀氀搀嘀攀爀猀椀漀渀✀ഀഀ
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Built from changelist. (FCrashDescription.BuiltFromCL)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Crashes', @level2type=N'COLUMN',@level2name=N'ChangeListVersion'਍䔀堀䔀䌀 猀礀猀⸀猀瀀开愀搀搀攀砀琀攀渀搀攀搀瀀爀漀瀀攀爀琀礀 䀀渀愀洀攀㴀一✀䴀匀开䐀攀猀挀爀椀瀀琀椀漀渀✀Ⰰ 䀀瘀愀氀甀攀㴀一✀吀栀攀ꀀ渀愀洀攀ꀀ漀昀ꀀ琀栀攀ꀀ戀爀愀渀挀栀ꀀ琀栀椀猀ꀀ最愀洀攀ꀀ眀愀猀ꀀ戀甀椀氀琀ꀀ漀甀琀ꀀ漀昀⸀ ⠀䘀䌀爀愀猀栀䐀攀猀挀爀椀瀀琀椀漀渀⸀䈀爀愀渀挀栀一愀洀攀⤀✀ Ⰰ 䀀氀攀瘀攀氀　琀礀瀀攀㴀一✀匀䌀䠀䔀䴀䄀✀Ⰰ䀀氀攀瘀攀氀　渀愀洀攀㴀一✀搀戀漀✀Ⰰ 䀀氀攀瘀攀氀㄀琀礀瀀攀㴀一✀吀䄀䈀䰀䔀✀Ⰰ䀀氀攀瘀攀氀㄀渀愀洀攀㴀一✀䌀爀愀猀栀攀猀✀Ⰰ 䀀氀攀瘀攀氀㈀琀礀瀀攀㴀一✀䌀伀䰀唀䴀一✀Ⰰ䀀氀攀瘀攀氀㈀渀愀洀攀㴀一✀䈀爀愀渀挀栀✀ഀഀ
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The command line of the application that crashed. (FCrashDescription.CommandLine)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Crashes', @level2type=N'COLUMN',@level2name=N'CommandLine'਍䔀堀䔀䌀 猀礀猀⸀猀瀀开愀搀搀攀砀琀攀渀搀攀搀瀀爀漀瀀攀爀琀礀 䀀渀愀洀攀㴀一✀䴀匀开䐀攀猀挀爀椀瀀琀椀漀渀✀Ⰰ 䀀瘀愀氀甀攀㴀一✀吀栀攀ꀀ戀愀猀攀ꀀ搀椀爀攀挀琀漀爀礀ꀀ眀栀攀爀攀ꀀ琀栀攀ꀀ愀瀀瀀ꀀ眀愀猀ꀀ爀甀渀渀椀渀最⸀ ⠀䘀䌀爀愀猀栀䐀攀猀挀爀椀瀀琀椀漀渀⸀䈀愀猀攀䐀椀爀⤀✀ Ⰰ 䀀氀攀瘀攀氀　琀礀瀀攀㴀一✀匀䌀䠀䔀䴀䄀✀Ⰰ䀀氀攀瘀攀氀　渀愀洀攀㴀一✀搀戀漀✀Ⰰ 䀀氀攀瘀攀氀㄀琀礀瀀攀㴀一✀吀䄀䈀䰀䔀✀Ⰰ䀀氀攀瘀攀氀㄀渀愀洀攀㴀一✀䌀爀愀猀栀攀猀✀Ⰰ 䀀氀攀瘀攀氀㈀琀礀瀀攀㴀一✀䌀伀䰀唀䴀一✀Ⰰ䀀氀攀瘀攀氀㈀渀愀洀攀㴀一✀䈀愀猀攀䐀椀爀✀ഀഀ
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The language of the system. (FCrashDescription.Language)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Crashes', @level2type=N'COLUMN',@level2name=N'LanguageExt'਍䔀堀䔀䌀 猀礀猀⸀猀瀀开愀搀搀攀砀琀攀渀搀攀搀瀀爀漀瀀攀爀琀礀 䀀渀愀洀攀㴀一✀䴀匀开䐀攀猀挀爀椀瀀琀椀漀渀✀Ⰰ 䀀瘀愀氀甀攀㴀一✀吀栀攀ꀀ渀愀洀攀ꀀ漀昀ꀀ琀栀攀ꀀ甀猀攀爀ꀀ琀栀愀琀ꀀ挀愀甀猀攀搀ꀀ琀栀椀猀ꀀ挀爀愀猀栀⸀ ⠀䘀䌀爀愀猀栀䐀攀猀挀爀椀瀀琀椀漀渀⸀唀猀攀爀一愀洀攀⤀✀ Ⰰ 䀀氀攀瘀攀氀　琀礀瀀攀㴀一✀匀䌀䠀䔀䴀䄀✀Ⰰ䀀氀攀瘀攀氀　渀愀洀攀㴀一✀搀戀漀✀Ⰰ 䀀氀攀瘀攀氀㄀琀礀瀀攀㴀一✀吀䄀䈀䰀䔀✀Ⰰ䀀氀攀瘀攀氀㄀渀愀洀攀㴀一✀䌀爀愀猀栀攀猀✀Ⰰ 䀀氀攀瘀攀氀㈀琀礀瀀攀㴀一✀䌀伀䰀唀䴀一✀Ⰰ䀀氀攀瘀攀氀㈀渀愀洀攀㴀一✀唀猀攀爀一愀洀攀✀ഀഀ
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique ID used to identify the machine the crash occurred on. (FCrashDescription.MachineGuid)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Crashes', @level2type=N'COLUMN',@level2name=N'ComputerName'਍䔀堀䔀䌀 猀礀猀⸀猀瀀开愀搀搀攀砀琀攀渀搀攀搀瀀爀漀瀀攀爀琀礀 䀀渀愀洀攀㴀一✀䴀匀开䐀攀猀挀爀椀瀀琀椀漀渀✀Ⰰ 䀀瘀愀氀甀攀㴀一✀吀栀攀ꀀ䔀瀀椀挀ꀀ愀挀挀漀甀渀琀ꀀ䤀䐀ꀀ昀漀爀ꀀ琀栀攀ꀀ甀猀攀爀ꀀ眀栀漀ꀀ氀愀猀琀ꀀ甀猀攀搀ꀀ琀栀攀ꀀ䰀愀甀渀挀栀攀爀⸀ ⠀䘀䌀爀愀猀栀䐀攀猀挀爀椀瀀琀椀漀渀⸀䔀瀀椀挀䄀挀挀漀甀渀琀䤀搀⤀✀ Ⰰ 䀀氀攀瘀攀氀　琀礀瀀攀㴀一✀匀䌀䠀䔀䴀䄀✀Ⰰ䀀氀攀瘀攀氀　渀愀洀攀㴀一✀搀戀漀✀Ⰰ 䀀氀攀瘀攀氀㄀琀礀瀀攀㴀一✀吀䄀䈀䰀䔀✀Ⰰ䀀氀攀瘀攀氀㄀渀愀洀攀㴀一✀䌀爀愀猀栀攀猀✀Ⰰ 䀀氀攀瘀攀氀㈀琀礀瀀攀㴀一✀䌀伀䰀唀䴀一✀Ⰰ䀀氀攀瘀攀氀㈀渀愀洀攀㴀一✀䔀瀀椀挀䄀挀挀漀甀渀琀䤀搀✀ഀഀ
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An array of strings representing the callstack of the crash. (FCrashDescription.CallStack)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Crashes', @level2type=N'COLUMN',@level2name=N'RawCallStack'਍䔀堀䔀䌀 猀礀猀⸀猀瀀开愀搀搀攀砀琀攀渀搀攀搀瀀爀漀瀀攀爀琀礀 䀀渀愀洀攀㴀一✀䴀匀开䐀攀猀挀爀椀瀀琀椀漀渀✀Ⰰ 䀀瘀愀氀甀攀㴀一✀䄀渀ꀀ愀爀爀愀礀ꀀ漀昀ꀀ猀琀爀椀渀最猀ꀀ猀栀漀眀椀渀最ꀀ琀栀攀ꀀ猀漀甀爀挀攀ꀀ挀漀搀攀ꀀ愀爀漀甀渀搀ꀀ琀栀攀ꀀ挀爀愀猀栀⸀ ⠀䘀䌀爀愀猀栀䐀攀猀挀爀椀瀀琀椀漀渀⸀匀漀甀爀挀攀䌀漀渀琀攀砀琀⤀✀ Ⰰ 䀀氀攀瘀攀氀　琀礀瀀攀㴀一✀匀䌀䠀䔀䴀䄀✀Ⰰ䀀氀攀瘀攀氀　渀愀洀攀㴀一✀搀戀漀✀Ⰰ 䀀氀攀瘀攀氀㄀琀礀瀀攀㴀一✀吀䄀䈀䰀䔀✀Ⰰ䀀氀攀瘀攀氀㄀渀愀洀攀㴀一✀䌀爀愀猀栀攀猀✀Ⰰ 䀀氀攀瘀攀氀㈀琀礀瀀攀㴀一✀䌀伀䰀唀䴀一✀Ⰰ䀀氀攀瘀攀氀㈀渀愀洀攀㴀一✀匀漀甀爀挀攀䌀漀渀琀攀砀琀✀ഀഀ
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An array of strings representing the user description of the crash. (FCrashDescription.UserDescription)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Crashes', @level2type=N'COLUMN',@level2name=N'Description'਍䔀堀䔀䌀 猀礀猀⸀猀瀀开愀搀搀攀砀琀攀渀搀攀搀瀀爀漀瀀攀爀琀礀 䀀渀愀洀攀㴀一✀䴀匀开䐀攀猀挀爀椀瀀琀椀漀渀✀Ⰰ 䀀瘀愀氀甀攀㴀一✀䄀猀猀攀爀琀椀漀渀ꀀ漀爀ꀀ攀渀猀甀爀攀ꀀ洀攀猀猀愀最攀ꀀ眀爀椀琀琀攀渀ꀀ戀礀ꀀ琀栀攀ꀀ挀爀愀猀栀攀搀ꀀ愀瀀瀀⸀ ⠀䘀䌀爀愀猀栀䐀攀猀挀爀椀瀀琀椀漀渀⸀䄀猀猀攀爀琀椀漀渀伀爀䔀渀猀甀爀攀䴀攀猀猀愀最攀⤀✀ Ⰰ 䀀氀攀瘀攀氀　琀礀瀀攀㴀一✀匀䌀䠀䔀䴀䄀✀Ⰰ䀀氀攀瘀攀氀　渀愀洀攀㴀一✀搀戀漀✀Ⰰ 䀀氀攀瘀攀氀㄀琀礀瀀攀㴀一✀吀䄀䈀䰀䔀✀Ⰰ䀀氀攀瘀攀氀㄀渀愀洀攀㴀一✀䌀爀愀猀栀攀猀✀Ⰰ 䀀氀攀瘀攀氀㈀琀礀瀀攀㴀一✀䌀伀䰀唀䴀一✀Ⰰ䀀氀攀瘀攀氀㈀渀愀洀攀㴀一✀匀甀洀洀愀爀礀✀ഀഀ
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The UTC time the crash occurred. (FCrashDescription.TimeofCrash)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Crashes', @level2type=N'COLUMN',@level2name=N'TimeOfCrash'਍䔀堀䔀䌀 猀礀猀⸀猀瀀开愀搀搀攀砀琀攀渀搀攀搀瀀爀漀瀀攀爀琀礀 䀀渀愀洀攀㴀一✀䴀匀开䐀攀猀挀爀椀瀀琀椀漀渀✀Ⰰ 䀀瘀愀氀甀攀㴀一✀圀栀攀琀栀攀爀ꀀ琀栀椀猀ꀀ挀爀愀猀栀ꀀ栀愀猀ꀀ愀ꀀ洀椀渀椀搀甀洀瀀ꀀ昀椀氀攀⸀ ⠀䘀䌀爀愀猀栀䐀攀猀挀爀椀瀀琀椀漀渀⸀戀䠀愀猀䴀椀渀椀䐀甀洀瀀䘀椀氀攀⤀✀ Ⰰ 䀀氀攀瘀攀氀　琀礀瀀攀㴀一✀匀䌀䠀䔀䴀䄀✀Ⰰ䀀氀攀瘀攀氀　渀愀洀攀㴀一✀搀戀漀✀Ⰰ 䀀氀攀瘀攀氀㄀琀礀瀀攀㴀一✀吀䄀䈀䰀䔀✀Ⰰ䀀氀攀瘀攀氀㄀渀愀洀攀㴀一✀䌀爀愀猀栀攀猀✀Ⰰ 䀀氀攀瘀攀氀㈀琀礀瀀攀㴀一✀䌀伀䰀唀䴀一✀Ⰰ䀀氀攀瘀攀氀㈀渀愀洀攀㴀一✀䠀愀猀䴀椀渀椀䐀甀洀瀀䘀椀氀攀✀ഀഀ
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether this crash has a log file. (FCrashDescription.bHasLogFile)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Crashes', @level2type=N'COLUMN',@level2name=N'HasLogFile'਍䔀堀䔀䌀 猀礀猀⸀猀瀀开愀搀搀攀砀琀攀渀搀攀搀瀀爀漀瀀攀爀琀礀 䀀渀愀洀攀㴀一✀䴀匀开䐀攀猀挀爀椀瀀琀椀漀渀✀Ⰰ 䀀瘀愀氀甀攀㴀一✀圀栀攀琀栀攀爀ꀀ琀栀椀猀ꀀ挀爀愀猀栀ꀀ栀愀猀ꀀ愀ꀀ瘀椀搀攀漀ꀀ昀椀氀攀⸀ ⠀䘀䌀爀愀猀栀䐀攀猀挀爀椀瀀琀椀漀渀⸀戀䠀愀猀嘀椀搀攀漀䘀椀氀攀⤀✀ Ⰰ 䀀氀攀瘀攀氀　琀礀瀀攀㴀一✀匀䌀䠀䔀䴀䄀✀Ⰰ䀀氀攀瘀攀氀　渀愀洀攀㴀一✀搀戀漀✀Ⰰ 䀀氀攀瘀攀氀㄀琀礀瀀攀㴀一✀吀䄀䈀䰀䔀✀Ⰰ䀀氀攀瘀攀氀㄀渀愀洀攀㴀一✀䌀爀愀猀栀攀猀✀Ⰰ 䀀氀攀瘀攀氀㈀琀礀瀀攀㴀一✀䌀伀䰀唀䴀一✀Ⰰ䀀氀攀瘀攀氀㈀渀愀洀攀㴀一✀䠀愀猀嘀椀搀攀漀䘀椀氀攀✀ഀഀ
਍ഀഀ
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status of the crash' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Crashes', @level2type=N'COLUMN',@level2name=N'Status'਍䔀堀䔀䌀 猀礀猀⸀猀瀀开愀搀搀攀砀琀攀渀搀攀搀瀀爀漀瀀攀爀琀礀 䀀渀愀洀攀㴀一✀䴀匀开䐀攀猀挀爀椀瀀琀椀漀渀✀Ⰰ 䀀瘀愀氀甀攀㴀一✀倀愀琀琀攀爀渀 甀猀攀搀 琀漀 最爀漀甀瀀 挀愀猀栀攀猀 椀渀琀漀 戀甀最最猀✀ Ⰰ 䀀氀攀瘀攀氀　琀礀瀀攀㴀一✀匀䌀䠀䔀䴀䄀✀Ⰰ䀀氀攀瘀攀氀　渀愀洀攀㴀一✀搀戀漀✀Ⰰ 䀀氀攀瘀攀氀㄀琀礀瀀攀㴀一✀吀䄀䈀䰀䔀✀Ⰰ䀀氀攀瘀攀氀㄀渀愀洀攀㴀一✀䌀爀愀猀栀攀猀✀Ⰰ 䀀氀攀瘀攀氀㈀琀礀瀀攀㴀一✀䌀伀䰀唀䴀一✀Ⰰ䀀氀攀瘀攀氀㈀渀愀洀攀㴀一✀倀愀琀琀攀爀渀✀ഀഀ
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Changelist that fixed this crash' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Crashes', @level2type=N'COLUMN',@level2name=N'FixedChangeList'਍䔀堀䔀䌀 猀礀猀⸀猀瀀开愀搀搀攀砀琀攀渀搀攀搀瀀爀漀瀀攀爀琀礀 䀀渀愀洀攀㴀一✀䴀匀开䐀攀猀挀爀椀瀀琀椀漀渀✀Ⰰ 䀀瘀愀氀甀攀㴀一✀一愀洀攀 漀昀 琀栀攀 洀漀搀甀氀攀 眀栀攀爀攀 琀栀攀 挀爀愀猀栀 漀挀挀甀爀爀攀搀✀ Ⰰ 䀀氀攀瘀攀氀　琀礀瀀攀㴀一✀匀䌀䠀䔀䴀䄀✀Ⰰ䀀氀攀瘀攀氀　渀愀洀攀㴀一✀搀戀漀✀Ⰰ 䀀氀攀瘀攀氀㄀琀礀瀀攀㴀一✀吀䄀䈀䰀䔀✀Ⰰ䀀氀攀瘀攀氀㄀渀愀洀攀㴀一✀䌀爀愀猀栀攀猀✀Ⰰ 䀀氀攀瘀攀氀㈀琀礀瀀攀㴀一✀䌀伀䰀唀䴀一✀Ⰰ䀀氀攀瘀攀氀㈀渀愀洀攀㴀一✀䴀漀搀甀氀攀✀ഀഀ
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of the user name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Crashes', @level2type=N'COLUMN',@level2name=N'UserNameId'਍䔀堀䔀䌀 猀礀猀⸀猀瀀开愀搀搀攀砀琀攀渀搀攀搀瀀爀漀瀀攀爀琀礀 䀀渀愀洀攀㴀一✀䴀匀开䐀攀猀挀爀椀瀀琀椀漀渀✀Ⰰ 䀀瘀愀氀甀攀㴀一✀吀栀攀 䤀䐀 漀昀 琀栀攀 吀吀倀✀ Ⰰ 䀀氀攀瘀攀氀　琀礀瀀攀㴀一✀匀䌀䠀䔀䴀䄀✀Ⰰ䀀氀攀瘀攀氀　渀愀洀攀㴀一✀搀戀漀✀Ⰰ 䀀氀攀瘀攀氀㄀琀礀瀀攀㴀一✀吀䄀䈀䰀䔀✀Ⰰ䀀氀攀瘀攀氀㄀渀愀洀攀㴀一✀䌀爀愀猀栀攀猀✀Ⰰ 䀀氀攀瘀攀氀㈀琀礀瀀攀㴀一✀䌀伀䰀唀䴀一✀Ⰰ䀀氀攀瘀攀氀㈀渀愀洀攀㴀一✀吀吀倀䤀䐀✀ഀഀ
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of the crash, crash(1), assert(2), ensure(3)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Crashes', @level2type=N'COLUMN',@level2name=N'CrashType'਍ഀഀ
/****** Object:  Table [dbo].[UserGroups]    Script Date: 27/01/2014 13:58:26 ******/਍匀䔀吀 䄀一匀䤀开一唀䰀䰀匀 伀一ഀഀ
GO਍匀䔀吀 儀唀伀吀䔀䐀开䤀䐀䔀一吀䤀䘀䤀䔀刀 伀一ഀഀ
GO਍匀䔀吀 䄀一匀䤀开倀䄀䐀䐀䤀一䜀 伀一ഀഀ
GO਍䌀刀䔀䄀吀䔀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀唀猀攀爀䜀爀漀甀瀀猀崀⠀ഀഀ
	[Id] [int] IDENTITY(1,1) NOT NULL,਍ऀ嬀一愀洀攀崀 嬀瘀愀爀挀栀愀爀崀⠀㔀　⤀ 一伀吀 一唀䰀䰀Ⰰഀഀ
 CONSTRAINT [PK_UserGroups] PRIMARY KEY CLUSTERED ਍⠀ഀഀ
	[Id] ASC਍⤀圀䤀吀䠀 ⠀倀䄀䐀开䤀一䐀䔀堀  㴀 伀䘀䘀Ⰰ 匀吀䄀吀䤀匀吀䤀䌀匀开一伀刀䔀䌀伀䴀倀唀吀䔀  㴀 伀䘀䘀Ⰰ 䤀䜀一伀刀䔀开䐀唀倀开䬀䔀夀  㴀 伀䘀䘀Ⰰ 䄀䰀䰀伀圀开刀伀圀开䰀伀䌀䬀匀  㴀 伀一Ⰰ 䄀䰀䰀伀圀开倀䄀䜀䔀开䰀伀䌀䬀匀  㴀 伀一⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
) ON [PRIMARY]਍䜀伀ഀഀ
SET ANSI_PADDING OFF਍䜀伀ഀഀ
/****** Object:  Table [dbo].[FunctionCalls]    Script Date: 27/01/2014 13:57:51 ******/਍匀䔀吀 䄀一匀䤀开一唀䰀䰀匀 伀一ഀഀ
GO਍匀䔀吀 儀唀伀吀䔀䐀开䤀䐀䔀一吀䤀䘀䤀䔀刀 伀一ഀഀ
GO਍匀䔀吀 䄀一匀䤀开倀䄀䐀䐀䤀一䜀 伀一ഀഀ
GO਍䌀刀䔀䄀吀䔀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀䘀甀渀挀琀椀漀渀䌀愀氀氀猀崀⠀ഀഀ
	[Id] [int] IDENTITY(1,1) NOT NULL,਍ऀ嬀䌀愀氀氀崀 嬀瘀愀爀挀栀愀爀崀⠀洀愀砀⤀ 一唀䰀䰀Ⰰഀഀ
 CONSTRAINT [PK_FunctionCalls] PRIMARY KEY CLUSTERED ਍⠀ഀഀ
	[Id] ASC਍⤀圀䤀吀䠀 ⠀倀䄀䐀开䤀一䐀䔀堀  㴀 伀䘀䘀Ⰰ 匀吀䄀吀䤀匀吀䤀䌀匀开一伀刀䔀䌀伀䴀倀唀吀䔀  㴀 伀䘀䘀Ⰰ 䤀䜀一伀刀䔀开䐀唀倀开䬀䔀夀  㴀 伀䘀䘀Ⰰ 䄀䰀䰀伀圀开刀伀圀开䰀伀䌀䬀匀  㴀 伀一Ⰰ 䄀䰀䰀伀圀开倀䄀䜀䔀开䰀伀䌀䬀匀  㴀 伀一⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]਍䜀伀ഀഀ
SET ANSI_PADDING OFF਍䜀伀ഀഀ
/****** Object:  Table [dbo].[Crashes_FunctionCalls]    Script Date: 27/01/2014 13:57:39 ******/਍匀䔀吀 䄀一匀䤀开一唀䰀䰀匀 伀一ഀഀ
GO਍匀䔀吀 儀唀伀吀䔀䐀开䤀䐀䔀一吀䤀䘀䤀䔀刀 伀一ഀഀ
GO਍䌀刀䔀䄀吀䔀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀䌀爀愀猀栀攀猀开䘀甀渀挀琀椀漀渀䌀愀氀氀猀崀⠀ഀഀ
	[CrashId] [int] NOT NULL,਍ऀ嬀䘀甀渀挀琀椀漀渀䌀愀氀氀䤀搀崀 嬀椀渀琀崀 一伀吀 一唀䰀䰀Ⰰഀഀ
 CONSTRAINT [PK_Crashes_FunctionCalls] PRIMARY KEY CLUSTERED ਍⠀ഀഀ
	[CrashId] ASC,਍ऀ嬀䘀甀渀挀琀椀漀渀䌀愀氀氀䤀搀崀 䄀匀䌀ഀഀ
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY  = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]਍⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
GO਍⼀⨀⨀⨀⨀⨀⨀ 伀戀樀攀挀琀㨀  吀愀戀氀攀 嬀搀戀漀崀⸀嬀䈀甀最最猀崀    匀挀爀椀瀀琀 䐀愀琀攀㨀 ㈀㜀⼀　㄀⼀㈀　㄀㐀 ㄀㌀㨀㔀㔀㨀㐀　 ⨀⨀⨀⨀⨀⨀⼀ഀഀ
SET ANSI_NULLS ON਍䜀伀ഀഀ
SET QUOTED_IDENTIFIER ON਍䜀伀ഀഀ
SET ANSI_PADDING ON਍䜀伀ഀഀ
CREATE TABLE [dbo].[Buggs](਍ऀ嬀䤀搀崀 嬀椀渀琀崀 䤀䐀䔀一吀䤀吀夀⠀㄀Ⰰ㄀⤀ 一伀吀 一唀䰀䰀Ⰰഀഀ
	[TTPID] [varchar](50) NULL,਍ऀ嬀吀椀琀氀攀崀 嬀瘀愀爀挀栀愀爀崀⠀㄀㈀　⤀ 一唀䰀䰀Ⰰഀഀ
	[Summary] [varchar](250) NULL,਍ऀ嬀倀爀椀漀爀椀琀礀崀 嬀椀渀琀崀 一唀䰀䰀Ⰰഀഀ
	[Pattern] [varchar](800) NOT NULL,਍ऀ嬀吀礀瀀攀崀 嬀瘀愀爀挀栀愀爀崀⠀㔀　⤀ 一唀䰀䰀Ⰰഀഀ
	[NumberOfCrashes] [int] NULL,਍ऀ嬀一甀洀戀攀爀伀昀唀猀攀爀猀崀 嬀椀渀琀崀 一唀䰀䰀Ⰰഀഀ
	[TimeOfFirstCrash] [datetime] NULL,਍ऀ嬀吀椀洀攀伀昀䰀愀猀琀䌀爀愀猀栀崀 嬀搀愀琀攀琀椀洀攀崀 一唀䰀䰀Ⰰഀഀ
	[Status] [varchar](64) NULL,਍ऀ嬀䘀椀砀攀搀䌀栀愀渀最攀䰀椀猀琀崀 嬀瘀愀爀挀栀愀爀崀⠀㔀　⤀ 一唀䰀䰀Ⰰഀഀ
	[Description] [text] NULL,਍ऀ嬀刀攀瀀爀漀匀琀攀瀀猀崀 嬀琀攀砀琀崀 一唀䰀䰀Ⰰഀഀ
	[Game] [varchar](120) NULL,਍ऀ嬀䈀甀椀氀搀嘀攀爀猀椀漀渀崀 嬀瘀愀爀挀栀愀爀崀⠀㄀㈀㠀⤀ 一唀䰀䰀Ⰰഀഀ
	[CrashType] [smallint] NULL,਍ 䌀伀一匀吀刀䄀䤀一吀 嬀倀䬀开䈀甀最最猀崀 倀刀䤀䴀䄀刀夀 䬀䔀夀 䌀䰀唀匀吀䔀刀䔀䐀 ഀഀ
(਍ऀ嬀䤀搀崀 䄀匀䌀ഀഀ
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY  = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]਍⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀 吀䔀堀吀䤀䴀䄀䜀䔀开伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
GO਍匀䔀吀 䄀一匀䤀开倀䄀䐀䐀䤀一䜀 伀䘀䘀ഀഀ
GO਍⼀⨀⨀⨀⨀⨀⨀ 伀戀樀攀挀琀㨀  吀愀戀氀攀 嬀搀戀漀崀⸀嬀䈀甀最最猀开䌀爀愀猀栀攀猀崀    匀挀爀椀瀀琀 䐀愀琀攀㨀 ㈀㜀⼀　㄀⼀㈀　㄀㐀 ㄀㌀㨀㔀㘀㨀㐀㌀ ⨀⨀⨀⨀⨀⨀⼀ഀഀ
SET ANSI_NULLS ON਍䜀伀ഀഀ
SET QUOTED_IDENTIFIER ON਍䜀伀ഀഀ
CREATE TABLE [dbo].[Buggs_Crashes](਍ऀ嬀䈀甀最最䤀搀崀 嬀椀渀琀崀 一伀吀 一唀䰀䰀Ⰰഀഀ
	[CrashId] [int] NOT NULL,਍ 䌀伀一匀吀刀䄀䤀一吀 嬀倀䬀开䈀甀最最猀开䌀爀愀猀栀攀猀崀 倀刀䤀䴀䄀刀夀 䬀䔀夀 䌀䰀唀匀吀䔀刀䔀䐀 ഀഀ
(਍ऀ嬀䈀甀最最䤀搀崀 䄀匀䌀Ⰰഀഀ
	[CrashId] ASC਍⤀圀䤀吀䠀 ⠀倀䄀䐀开䤀一䐀䔀堀  㴀 伀䘀䘀Ⰰ 匀吀䄀吀䤀匀吀䤀䌀匀开一伀刀䔀䌀伀䴀倀唀吀䔀  㴀 伀䘀䘀Ⰰ 䤀䜀一伀刀䔀开䐀唀倀开䬀䔀夀 㴀 伀䘀䘀Ⰰ 䄀䰀䰀伀圀开刀伀圀开䰀伀䌀䬀匀  㴀 伀一Ⰰ 䄀䰀䰀伀圀开倀䄀䜀䔀开䰀伀䌀䬀匀  㴀 伀一⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
) ON [PRIMARY]਍䜀伀ഀഀ
/****** Object:  Table [dbo].[Buggs_Users]    Script Date: 27/01/2014 13:57:11 ******/਍匀䔀吀 䄀一匀䤀开一唀䰀䰀匀 伀一ഀഀ
GO਍匀䔀吀 儀唀伀吀䔀䐀开䤀䐀䔀一吀䤀䘀䤀䔀刀 伀一ഀഀ
GO਍匀䔀吀 䄀一匀䤀开倀䄀䐀䐀䤀一䜀 伀一ഀഀ
GO਍䌀刀䔀䄀吀䔀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀䈀甀最最猀开唀猀攀爀猀崀⠀ഀഀ
	[BuggId] [int] NOT NULL,਍ऀ嬀唀猀攀爀一愀洀攀崀 嬀瘀愀爀挀栀愀爀崀⠀㘀㐀⤀ 一伀吀 一唀䰀䰀Ⰰഀഀ
 CONSTRAINT [PK_Buggs_Users] PRIMARY KEY CLUSTERED ਍⠀ഀഀ
	[BuggId] ASC,਍ऀ嬀唀猀攀爀一愀洀攀崀 䄀匀䌀ഀഀ
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY  = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]਍⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
GO਍匀䔀吀 䄀一匀䤀开倀䄀䐀䐀䤀一䜀 伀䘀䘀ഀഀ
GO਍⼀⨀⨀⨀⨀⨀⨀ 伀戀樀攀挀琀㨀  吀愀戀氀攀 嬀搀戀漀崀⸀嬀䈀甀最最猀开唀猀攀爀䜀爀漀甀瀀猀崀    匀挀爀椀瀀琀 䐀愀琀攀㨀 ㈀㜀⼀　㄀⼀㈀　㄀㐀 ㄀㌀㨀㔀㘀㨀㔀㠀 ⨀⨀⨀⨀⨀⨀⼀ഀഀ
SET ANSI_NULLS ON਍䜀伀ഀഀ
SET QUOTED_IDENTIFIER ON਍䜀伀ഀഀ
CREATE TABLE [dbo].[Buggs_UserGroups](਍ऀ嬀䈀甀最最䤀搀崀 嬀椀渀琀崀 一伀吀 一唀䰀䰀Ⰰഀഀ
	[UserGroupId] [int] NOT NULL,਍ 䌀伀一匀吀刀䄀䤀一吀 嬀倀䬀开䈀甀最最猀开唀猀攀爀䜀爀漀甀瀀猀崀 倀刀䤀䴀䄀刀夀 䬀䔀夀 䌀䰀唀匀吀䔀刀䔀䐀 ഀഀ
(਍ऀ嬀䈀甀最最䤀搀崀 䄀匀䌀Ⰰഀഀ
	[UserGroupId] ASC਍⤀圀䤀吀䠀 ⠀倀䄀䐀开䤀一䐀䔀堀  㴀 伀䘀䘀Ⰰ 匀吀䄀吀䤀匀吀䤀䌀匀开一伀刀䔀䌀伀䴀倀唀吀䔀  㴀 伀䘀䘀Ⰰ 䤀䜀一伀刀䔀开䐀唀倀开䬀䔀夀  㴀 伀䘀䘀Ⰰ 䄀䰀䰀伀圀开刀伀圀开䰀伀䌀䬀匀  㴀 伀一Ⰰ 䄀䰀䰀伀圀开倀䄀䜀䔀开䰀伀䌀䬀匀  㴀 伀一⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
) ON [PRIMARY]਍䜀伀ഀഀ
/****** Object:  Table [dbo].[PIIMapping]    Script Date: 27/01/2014 13:58:11 ******/਍匀䔀吀 䄀一匀䤀开一唀䰀䰀匀 伀一ഀഀ
GO਍匀䔀吀 儀唀伀吀䔀䐀开䤀䐀䔀一吀䤀䘀䤀䔀刀 伀一ഀഀ
GO਍匀䔀吀 䄀一匀䤀开倀䄀䐀䐀䤀一䜀 伀一ഀഀ
GO਍䌀刀䔀䄀吀䔀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀倀䤀䤀䴀愀瀀瀀椀渀最崀⠀ഀഀ
	[ID] [int] IDENTITY(1,1) NOT NULL,਍ऀ嬀䴀愀挀栀椀渀攀䜀唀䤀䐀崀 嬀瘀愀爀挀栀愀爀崀⠀㘀㐀⤀ 一唀䰀䰀Ⰰഀഀ
	[UserName] [varchar](64) NULL,਍ऀ嬀䴀愀挀栀椀渀攀一愀洀攀崀 嬀瘀愀爀挀栀愀爀崀⠀㘀㐀⤀ 一唀䰀䰀Ⰰഀഀ
 CONSTRAINT [PK_PIIMapping] PRIMARY KEY CLUSTERED ਍⠀ഀഀ
	[ID] ASC਍⤀圀䤀吀䠀 ⠀倀䄀䐀开䤀一䐀䔀堀  㴀 伀䘀䘀Ⰰ 匀吀䄀吀䤀匀吀䤀䌀匀开一伀刀䔀䌀伀䴀倀唀吀䔀  㴀 伀䘀䘀Ⰰ 䤀䜀一伀刀䔀开䐀唀倀开䬀䔀夀  㴀 伀䘀䘀Ⰰ 䄀䰀䰀伀圀开刀伀圀开䰀伀䌀䬀匀  㴀 伀一Ⰰ 䄀䰀䰀伀圀开倀䄀䜀䔀开䰀伀䌀䬀匀  㴀 伀一⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
) ON [PRIMARY]਍䜀伀ഀഀ
SET ANSI_PADDING OFF਍䜀伀ഀഀ
EXEC sys.sp_addextendedproperty @name =N'MS_Description', @value =N'A mapping of the anonymous WER machine id to a user name and machine name' , @level0type =N'SCHEMA',@level0name =N'dbo', @level1type =N'TABLE',@level1name =N'PIIMapping'਍䜀伀ഀഀ
਍ഀഀ
/****** Object:  ForeignKey [FK_Buggs_Crashes_Crashes]    Script Date: 27/01/2014 13:56:43 ******/਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀䈀甀最最猀开䌀爀愀猀栀攀猀崀  圀䤀吀䠀 䌀䠀䔀䌀䬀 䄀䐀䐀  䌀伀一匀吀刀䄀䤀一吀 嬀䘀䬀开䈀甀最最猀开䌀爀愀猀栀攀猀开䌀爀愀猀栀攀猀崀 䘀伀刀䔀䤀䜀一 䬀䔀夀⠀嬀䌀爀愀猀栀䤀搀崀⤀ഀഀ
REFERENCES [dbo].[Crashes] ([Id])਍䜀伀ഀഀ
ALTER TABLE [dbo].[Buggs_Crashes] CHECK CONSTRAINT [FK_Buggs_Crashes_Crashes]਍䜀伀ഀഀ
/****** Object:  ForeignKey [FK_Buggs_UserGroups_UserGroups]    Script Date: 27/01/2014 13:56:43 ******/਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀䈀甀最最猀开唀猀攀爀䜀爀漀甀瀀猀崀  圀䤀吀䠀 䌀䠀䔀䌀䬀 䄀䐀䐀  䌀伀一匀吀刀䄀䤀一吀 嬀䘀䬀开䈀甀最最猀开唀猀攀爀䜀爀漀甀瀀猀开唀猀攀爀䜀爀漀甀瀀猀崀 䘀伀刀䔀䤀䜀一 䬀䔀夀⠀嬀唀猀攀爀䜀爀漀甀瀀䤀搀崀⤀ഀഀ
REFERENCES [dbo].[UserGroups] ([Id])਍䜀伀ഀഀ
ALTER TABLE [dbo].[Buggs_UserGroups] CHECK CONSTRAINT [FK_Buggs_UserGroups_UserGroups]਍䜀伀ഀഀ
/****** Object:  ForeignKey [FK_Buggs_Users_Users]    Script Date: 27/01/2014 13:56:43 ******/਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀䈀甀最最猀开唀猀攀爀猀崀  圀䤀吀䠀 䌀䠀䔀䌀䬀 䄀䐀䐀  䌀伀一匀吀刀䄀䤀一吀 嬀䘀䬀开䈀甀最最猀开唀猀攀爀猀开唀猀攀爀猀崀 䘀伀刀䔀䤀䜀一 䬀䔀夀⠀嬀唀猀攀爀一愀洀攀崀⤀ഀഀ
REFERENCES [dbo].[Users] ([UserName])਍䜀伀ഀഀ
ALTER TABLE [dbo].[Buggs_Users] CHECK CONSTRAINT [FK_Buggs_Users_Users]਍䜀伀ഀഀ
/****** Object:  ForeignKey [FK_Crashes_Users]    Script Date: 27/01/2014 13:56:43 ******/਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀䌀爀愀猀栀攀猀崀  圀䤀吀䠀 䌀䠀䔀䌀䬀 䄀䐀䐀  䌀伀一匀吀刀䄀䤀一吀 嬀䘀䬀开䌀爀愀猀栀攀猀开唀猀攀爀猀崀 䘀伀刀䔀䤀䜀一 䬀䔀夀⠀嬀唀猀攀爀一愀洀攀崀⤀ഀഀ
REFERENCES [dbo].[Users] ([UserName])਍䜀伀ഀഀ
ALTER TABLE [dbo].[Crashes] CHECK CONSTRAINT [FK_Crashes_Users]਍䜀伀ഀഀ
/****** Object:  ForeignKey [FK_Crashes_FunctionCalls_Crashes]    Script Date: 27/01/2014 13:56:43 ******/਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀䌀爀愀猀栀攀猀开䘀甀渀挀琀椀漀渀䌀愀氀氀猀崀  圀䤀吀䠀 䌀䠀䔀䌀䬀 䄀䐀䐀  䌀伀一匀吀刀䄀䤀一吀 嬀䘀䬀开䌀爀愀猀栀攀猀开䘀甀渀挀琀椀漀渀䌀愀氀氀猀开䌀爀愀猀栀攀猀崀 䘀伀刀䔀䤀䜀一 䬀䔀夀⠀嬀䌀爀愀猀栀䤀搀崀⤀ഀഀ
REFERENCES [dbo].[Crashes] ([Id])਍䜀伀ഀഀ
ALTER TABLE [dbo].[Crashes_FunctionCalls] CHECK CONSTRAINT [FK_Crashes_FunctionCalls_Crashes]਍䜀伀ഀഀ
/****** Object:  ForeignKey [FK_Crashes_FunctionCalls_FunctionCalls]    Script Date: 27/01/2014 13:56:43 ******/਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀䌀爀愀猀栀攀猀开䘀甀渀挀琀椀漀渀䌀愀氀氀猀崀  圀䤀吀䠀 䌀䠀䔀䌀䬀 䄀䐀䐀  䌀伀一匀吀刀䄀䤀一吀 嬀䘀䬀开䌀爀愀猀栀攀猀开䘀甀渀挀琀椀漀渀䌀愀氀氀猀开䘀甀渀挀琀椀漀渀䌀愀氀氀猀崀 䘀伀刀䔀䤀䜀一 䬀䔀夀⠀嬀䘀甀渀挀琀椀漀渀䌀愀氀氀䤀搀崀⤀ഀഀ
REFERENCES [dbo].[FunctionCalls] ([Id])਍䜀伀ഀഀ
ALTER TABLE [dbo].[Crashes_FunctionCalls] CHECK CONSTRAINT [FK_Crashes_FunctionCalls_FunctionCalls]਍䜀伀ഀഀ
/****** Object:  DefaultValues    Script Date: 27/01/2014 13:56:43 ******/਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀䌀爀愀猀栀攀猀崀 䄀䐀䐀  䌀伀一匀吀刀䄀䤀一吀 嬀䐀䘀开䌀爀愀猀栀攀猀开倀爀漀挀攀猀猀攀搀崀  䐀䔀䘀䄀唀䰀吀 ⠀⠀　⤀⤀ 䘀伀刀 嬀倀爀漀挀攀猀猀攀搀崀ഀഀ
GO਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀䌀爀愀猀栀攀猀崀 䄀䐀䐀  䌀伀一匀吀刀䄀䤀一吀 嬀䐀䘀开䌀爀愀猀栀攀猀开䠀愀猀䐀椀愀最渀漀猀琀椀挀猀䘀椀氀攀崀  䐀䔀䘀䄀唀䰀吀 ⠀⠀　⤀⤀ 䘀伀刀 嬀䠀愀猀䐀椀愀最渀漀猀琀椀挀猀䘀椀氀攀崀ഀഀ
GO਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀䌀爀愀猀栀攀猀崀 䄀䐀䐀  䌀伀一匀吀刀䄀䤀一吀 嬀䐀䘀开䌀爀愀猀栀攀猀开䠀愀猀一攀眀䰀漀最䘀椀氀攀崀  䐀䔀䘀䄀唀䰀吀 ⠀⠀　⤀⤀ 䘀伀刀 嬀䠀愀猀一攀眀䰀漀最䘀椀氀攀崀ഀഀ
GO਍ഀഀ
INSERT INTO [dbo].[UserGroups]਍           ⠀嬀一愀洀攀崀⤀ഀഀ
     VALUES਍           ⠀✀䜀攀渀攀爀愀氀✀⤀ഀഀ
GO਍䤀一匀䔀刀吀 䤀一吀伀 嬀搀戀漀崀⸀嬀唀猀攀爀䜀爀漀甀瀀猀崀ഀഀ
           ([Name])਍     嘀䄀䰀唀䔀匀ഀഀ
           ('Tester')਍䜀伀ഀഀ
਍䤀一匀䔀刀吀 䤀一吀伀 嬀搀戀漀崀⸀嬀唀猀攀爀䜀爀漀甀瀀猀崀ഀഀ
           ([Name])਍     嘀䄀䰀唀䔀匀ഀഀ
           ('Coder')਍䜀伀ഀഀ
INSERT INTO [dbo].[UserGroups]਍           ⠀嬀一愀洀攀崀⤀ഀഀ
     VALUES਍           ⠀✀䄀甀琀漀洀愀琀攀搀✀⤀ഀഀ
GO਍䤀一匀䔀刀吀 䤀一吀伀 嬀搀戀漀崀⸀嬀唀猀攀爀䜀爀漀甀瀀猀崀ഀഀ
           ([Name])਍     嘀䄀䰀唀䔀匀ഀഀ
           ('Undefined')਍䜀伀ഀഀ
਍�