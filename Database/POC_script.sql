USE [master]
GO
/****** Object:  Database [POC]    Script Date: 28-03-2021 15:48:02 ******/
CREATE DATABASE [POC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'POC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\POC.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'POC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\POC_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [POC] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [POC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [POC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [POC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [POC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [POC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [POC] SET ARITHABORT OFF 
GO
ALTER DATABASE [POC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [POC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [POC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [POC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [POC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [POC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [POC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [POC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [POC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [POC] SET  ENABLE_BROKER 
GO
ALTER DATABASE [POC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [POC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [POC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [POC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [POC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [POC] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [POC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [POC] SET RECOVERY FULL 
GO
ALTER DATABASE [POC] SET  MULTI_USER 
GO
ALTER DATABASE [POC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [POC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [POC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [POC] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [POC] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [POC] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'POC', N'ON'
GO
ALTER DATABASE [POC] SET QUERY_STORE = OFF
GO
USE [POC]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 28-03-2021 15:48:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 28-03-2021 15:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 28-03-2021 15:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 28-03-2021 15:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 28-03-2021 15:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 28-03-2021 15:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 28-03-2021 15:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 28-03-2021 15:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 28-03-2021 15:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 28-03-2021 15:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210311074100_addCategoryToDatabase', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210312060458_AddProductToDb', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210316155327_scaffoldIdentityRazorClassLib', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210316191801_AddFullNameToUsersTable', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210316192036_AddFullNameToUsersTable1', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210322163923_PushOrderHeaderAndDetailsToDb', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210322172515_RemoveOrderHeaderAndDetailsToDb', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210323145245_PushOrderHeaderAndDetailToDb', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210323154609_RemoveOrderHeaderAndDetailToDb', N'5.0.4')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'62b39b97-9b5f-492c-a931-5baa1badcc49', N'Customer', N'CUSTOMER', N'ebfeee01-636d-4e2c-bc24-60fc1a7f728e')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'd050d0b2-89ee-4065-ab52-421b9eae5767', N'Admin', N'ADMIN', N'7b7743d8-6b1c-4c95-a448-ce266aa36e82')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'00074bce-d7cd-474f-84aa-d87c8a7e0d7a', N'62b39b97-9b5f-492c-a931-5baa1badcc49')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a5d83531-b58e-41f1-8bdd-c3eafebceab0', N'62b39b97-9b5f-492c-a931-5baa1badcc49')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cfe0ee5a-63c2-4c04-87ce-9d38ce3e2f3a', N'62b39b97-9b5f-492c-a931-5baa1badcc49')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ed739449-f83b-4113-a019-a8cae56787a0', N'62b39b97-9b5f-492c-a931-5baa1badcc49')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'07c946e6-91f6-40bf-9709-e308befb0cc4', N'd050d0b2-89ee-4065-ab52-421b9eae5767')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'18fa506e-636e-4865-8d1e-b656d7f7b076', N'd050d0b2-89ee-4065-ab52-421b9eae5767')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3818f584-1ea2-408f-9f4d-409eecddc199', N'd050d0b2-89ee-4065-ab52-421b9eae5767')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3ad32f61-5147-41f6-a1a8-a96576471e60', N'd050d0b2-89ee-4065-ab52-421b9eae5767')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'00074bce-d7cd-474f-84aa-d87c8a7e0d7a', N'smruti@admin.com', N'SMRUTI@ADMIN.COM', N'smruti@admin.com', N'SMRUTI@ADMIN.COM', 0, N'AQAAAAEAACcQAAAAEHeB1EMqv/1Kg4H41KZMhXl24sFcDh2AjuSq2YAyQpaz7WhlHLc1zRlcfTuMpALe2g==', N'M7TDBDSIG3ZVPOUF7NCZTWMZNRG3K62F', N'60db78b6-3cc8-4cf4-8e99-7f0350eabd71', N'1234512345', 0, 0, NULL, 1, 0, N'ApplicationUser', N'Smruti Ranjan')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'07c946e6-91f6-40bf-9709-e308befb0cc4', N'demoadmin@admin.com', N'DEMOADMIN@ADMIN.COM', N'demoadmin@admin.com', N'DEMOADMIN@ADMIN.COM', 0, N'AQAAAAEAACcQAAAAEO9UYqrUe9paynZoS/x5RFlMJMnSZC7zwlAypwI8gTIn4TiYMnzTNDNjhhmOFhpLnQ==', N'GP2CDJIK4XDER2VMOPNCL43LUWP7Y7HL', N'321d3242-1c16-48ed-abb0-f6c95951742f', N'1234512345', 0, 0, NULL, 1, 0, N'ApplicationUser', N'Demo Admin')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'18fa506e-636e-4865-8d1e-b656d7f7b076', N'smruti@gmail.com', N'SMRUTI@GMAIL.COM', N'smruti@gmail.com', N'SMRUTI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELRioAH1ynruTW/u6tFq5QoURkgPZ7c04V+4sLduR1hq5s2arMaYVsD9/GX8a5v8DA==', N'27TPGUCBGQ5F476QMSB4575KYLFQC6GO', N'f027da04-659d-4458-9633-7c1f1aecf1a4', N'1234512345', 0, 0, NULL, 1, 0, N'ApplicationUser', N'Smruti Ranjan')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'3818f584-1ea2-408f-9f4d-409eecddc199', N'smrutiadmin@admin.com', N'SMRUTIADMIN@ADMIN.COM', N'smrutiadmin@admin.com', N'SMRUTIADMIN@ADMIN.COM', 0, N'AQAAAAEAACcQAAAAEBqfbv0yT6ufVJL2WlZPWsqfaoakf4oIOZX9zWG46ZCi82KBBZhZYDudU+XBG01w8A==', N'2EHGYHGTN5DRKKLHIFX6LKRLQUCPUGOW', N'b094b6e3-352a-44d1-a5fa-637e4fe03b98', N'1234512345', 0, 0, NULL, 1, 0, N'ApplicationUser', N'Smruti Ranjan Admin')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'3ad32f61-5147-41f6-a1a8-a96576471e60', N'smrutiadmin2@admin.com', N'SMRUTIADMIN2@ADMIN.COM', N'smrutiadmin2@admin.com', N'SMRUTIADMIN2@ADMIN.COM', 0, N'AQAAAAEAACcQAAAAEM+qEJaHc76l9RXqx5otU6SjGrVqH4dxAzbKpdUTSI7sg2Y/xJKMO+TxL1+r6Bw+kA==', N'K4M7SLD5LQCZ2I4S4RV4YDNEXCTVSBEY', N'c62f1d8b-c82b-4519-9a93-b1c30b0aa5f0', N'1234512345', 0, 0, NULL, 1, 0, N'ApplicationUser', N'Smruti Ranjan Admin 2')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'a5d83531-b58e-41f1-8bdd-c3eafebceab0', N'smrutiuser@user.com', N'SMRUTIUSER@USER.COM', N'smrutiuser@user.com', N'SMRUTIUSER@USER.COM', 0, N'AQAAAAEAACcQAAAAEF+IlBitcOWpmZomLnrqyxKGLQQN1b9v9Q91NnlXRvoXk2m/zBYee9ar+hsWxFIFyw==', N'MTDCKPSS6VG6ZYIC44M5NAPO62LBY5GI', N'b074d7f5-6a64-4be6-90ba-09374168ee55', N'1234512345', 0, 0, NULL, 1, 0, N'ApplicationUser', N'Smruti Ranjan User')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'cfe0ee5a-63c2-4c04-87ce-9d38ce3e2f3a', N'admin@admin.com', N'ADMIN@ADMIN.COM', N'admin@admin.com', N'ADMIN@ADMIN.COM', 0, N'AQAAAAEAACcQAAAAELGn2Ix89xERU1RXiT9o0r/AKMAfrVVFrB3XRgojgxlRW5w055LT49OBModbAU0oag==', N'4RAZT35ECG4PUICFQ6QWMRLLWXQMUK3E', N'972a0998-5225-4b97-b827-94cffb185c1e', N'1234512345', 0, 0, NULL, 1, 0, N'ApplicationUser', N'Smruti Ranjan')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'ed739449-f83b-4113-a019-a8cae56787a0', N'user@user.com', N'USER@USER.COM', N'user@user.com', N'USER@USER.COM', 0, N'AQAAAAEAACcQAAAAEAUl6pR/r88eBhLIp6PsyrGxayVYgbUcvQCaINXljNxLQzvbloOfDk1aeb0vyGu4RQ==', N'RCU6ZM36NCF57FC54KEFT5YNBY7I6WBL', N'04a9e47a-53bb-47ad-9446-227c2337f1da', N'1234512345', 0, 0, NULL, 1, 0, N'ApplicationUser', N'Smruti Ranjan User')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [DisplayOrder]) VALUES (4, N'Bread', 1)
INSERT [dbo].[Category] ([Id], [Name], [DisplayOrder]) VALUES (5, N'Dairy', 2)
INSERT [dbo].[Category] ([Id], [Name], [DisplayOrder]) VALUES (6, N'Fruits', 3)
INSERT [dbo].[Category] ([Id], [Name], [DisplayOrder]) VALUES (7, N'Vegetables', 4)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId]) VALUES (2, N'Milk Bread', N'<p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify;text-justify:inter-ideograph;line-height:normal;mso-layout-grid-align:
none;text-autospace:none"><span style="font-size:12.0pt;font-family:&quot;Segoe UI Semibold&quot;,&quot;sans-serif&quot;"><span style="font-family: Arial;">Soft,
light textured with a soft crust and round type of bread made using milk
instead of water, as well as white flour, yeast and sugar.</span><o:p></o:p></span></p>', 2, N'15bf8806-92eb-485e-9f60-abd18a9484f5.jpg', 4)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId]) VALUES (3, N'Brown Bread', N'<p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify;text-justify:inter-ideograph;line-height:normal;mso-layout-grid-align:
none;text-autospace:none"><font face="Arial"><span style="font-size: 12pt;">Made
with significant amounts of whole grain flour, usually wheat, and sometimes
dark-</span>colored<span style="font-size: 12pt;">&nbsp;ingredients such as molasses or coffee. It provides </span>fiber<span style="font-size: 12pt;">,
protein, iron, potassium and many other nutrients.</span></font><font face="Segoe UI Semibold, sans-serif"><span style="font-size: 12pt;"><o:p></o:p></span></font></p>', 3, N'd6d05527-64e1-4f16-978b-b59698d15fd2.jpg', 4)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId]) VALUES (4, N'Multigrain Bread', N'<p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify;text-justify:inter-ideograph;line-height:normal;mso-layout-grid-align:
none;text-autospace:none"><font face="Arial"><span style="font-size: 12pt;">Prepared
with two or more types of grain which includes barley, flax, millet, oats,
wheat, whole-wheat flour, and edible seeds such as </span>flax seed<span style="font-size: 12pt;">, quinoa, pumpkin
seeds, and sunflower seeds.</span></font><font face="Segoe UI Semibold, sans-serif"><span style="font-size: 12pt;">&nbsp;<o:p></o:p></span></font></p>', 4, N'25734b3e-b5f0-4458-9af7-834cd02cfcb8.jpg', 4)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId]) VALUES (5, N'Banana Bread', N'<p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify;text-justify:inter-ideograph;line-height:normal;mso-layout-grid-align:
none;text-autospace:none"><span style="font-size:12.0pt;font-family:&quot;Segoe UI Semibold&quot;,&quot;sans-serif&quot;"><span style="font-family: Arial;">Made
from mashed bananas, these are often a moist, dense, sweet, cake-like quick
bread, usually chemically leavened with baking soda or powder.</span><o:p></o:p></span></p>', 3, N'6ad40b60-39e7-473a-9bcc-80a64f1802bc.jpg', 4)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId]) VALUES (6, N'Milk', N'<p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify;text-justify:inter-ideograph;line-height:normal;mso-layout-grid-align:
none;text-autospace:none"><font face="Arial"><span style="font-size: 12pt;">Pasteurized, </span>homogenized<span style="font-size: 12pt;">&nbsp;version of milk, where the milk is heated and then cooled
immediately under a supervised temperature to get rid of bacteria and
impurities.</span></font><font face="Segoe UI Semibold, sans-serif"><span style="font-size: 12pt;"><o:p></o:p></span></font></p>', 3, N'c6152129-38c3-4eb5-b618-5ba1d0e7ef60.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId]) VALUES (7, N'Ghee', N'<p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify;text-justify:inter-ideograph;line-height:normal;mso-layout-grid-align:
none;text-autospace:none"><span style="font-size:12.0pt;font-family:&quot;Segoe UI Semibold&quot;,&quot;sans-serif&quot;"><span style="font-family: Arial;">Sourced
from milk of indigenous cows bred and is 100% pure and nourishing. Contains fat
soluble vitamins and helps in boosting immunity. Also helps in improving
healthy cholesterol level, keeps skin glowing and improves digestion.</span><o:p></o:p></span></p>', 16, N'412113f2-e4b4-42b2-8311-e27c26202165.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId]) VALUES (8, N'Cheese', N'<p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify;text-justify:inter-ideograph;line-height:normal;mso-layout-grid-align:
none;text-autospace:none"><span style="font-size:12.0pt;font-family:&quot;Segoe UI Semibold&quot;,&quot;sans-serif&quot;"><span style="font-family: Arial;">Derived
from pure milk and forms by coagulation of the milk protein casein. It
comprises proteins and fat from milk, adds a distinctive taste and is
absolutely delicious.</span><o:p></o:p></span></p>', 6, N'c971490a-553c-447a-af27-fe2cd048a69c.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId]) VALUES (9, N'Butter', N'<p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify;text-justify:inter-ideograph;line-height:normal;mso-layout-grid-align:
none;text-autospace:none"><span style="font-size:12.0pt;font-family:&quot;Segoe UI Semibold&quot;,&quot;sans-serif&quot;"><span style="font-family: Arial;">Made
from the fat and protein components of milk or cream, it''s a pasteurized and
vegetarian product. It is a semi-solid emulsion at room temperature, consisting
of approximately 80% butterfat.</span><o:p></o:p></span></p>', 4, N'e38196e5-8cd0-4b7c-8dd9-36bdbf778d59.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId]) VALUES (10, N'Apple', N'<p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify;text-justify:inter-ideograph;line-height:normal;mso-layout-grid-align:
none;text-autospace:none"><span style="font-size: 12pt; font-family: Arial; color: rgb(15, 17, 17);">This product is 100%
Wax Free</span><span style="font-size: 12pt; font-family: Arial;">.
</span><span style="font-size: 12pt; font-family: Arial; color: rgb(15, 17, 17);">The pack contains 4
pieces</span><span style="font-size: 12pt; font-family: Arial;">.
</span><font color="#0f1111" face="Arial"><span style="font-size: 12pt;">Good source of Vitamin
C, dietary </span>fibers,&nbsp;<span style="font-size: 12pt;">and antioxidants. Store at cool and dry place under
8 degree </span>Celsius<span style="font-size: 12pt;">.</span></font><span style="font-size:12.0pt;font-family:&quot;Segoe UI Semibold&quot;,&quot;sans-serif&quot;">
<o:p></o:p></span></p>', 2, N'e4555bf8-0b7b-46a9-a849-f4d5a522549a.jpeg', 6)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId]) VALUES (11, N'Strawberry', N'<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="font-size:12.0pt;font-family:&quot;Segoe UI Semibold&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F1111">They’re an excellent
source of vitamin C and manganese and also contain decent amounts of Vitamin and potassium. Also rich in antioxidants and plant compounds. </span><span style="font-size: 12pt; font-family: &quot;Segoe UI Semibold&quot;, sans-serif; color: rgb(15, 17, 17); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Store in 10 to 15 degree Celsius.</span><span style="font-size:12.0pt;font-family:&quot;Segoe UI Semibold&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>', 4, N'9903dcd3-73a0-4805-8829-918adbf7f035.jpg', 6)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId]) VALUES (12, N'Grapes', N'<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><font color="#0f1111" face="Segoe UI Semibold, sans-serif"><span style="font-size: 12pt; font-family: Arial;">Packed with nutrients
and minerals, especially Vitamins C and K. Makes a popular snack because of its
sweet </span><span style="font-family: Arial;">flavor</span><span style="font-size: 12pt; font-family: Arial;">. </span></font><span style="font-size: 12pt; font-family: Arial; color: rgb(15, 17, 17); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Comes in safe and secure packing.</span><span style="font-size:12.0pt;font-family:&quot;Segoe UI Semibold&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F1111"><o:p></o:p></span></p>', 3, N'653ff624-e212-4749-afe5-2752e290c75e.jpg', 6)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId]) VALUES (13, N'Mango', N'<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="font-size:12.0pt;font-family:&quot;Segoe UI Semibold&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F1111">Fresh and natural
mangoes shipped directly from the farm.</span><span style="font-size: 12pt; font-family: &quot;Segoe UI Semibold&quot;, sans-serif; color: rgb(15, 17, 17); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"> Low
in calories yet high in nutrients. </span><b><span style="font-size: 12pt; font-family: &quot;Segoe UI Semibold&quot;, sans-serif; color: rgb(32, 33, 36); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Aids&nbsp;immunity,
iron absorption and growth and repair. </span></b><span style="font-size: 12pt; font-family: &quot;Segoe UI Semibold&quot;, sans-serif; color: rgb(15, 17, 17); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Comes
in safe and secure packing.</span><span style="font-size:12.0pt;
font-family:&quot;Segoe UI Semibold&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:#0F1111"><o:p></o:p></span></p>', 5, N'44595f89-e765-4470-b181-d8f4e330c5a2.jpg', 6)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId]) VALUES (14, N'Onion', N'<p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify;text-justify:inter-ideograph;line-height:normal;mso-layout-grid-align:
none;text-autospace:none"><span style="font-size: 12pt; font-family: Arial; color: rgb(32, 33, 36); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Packed with nutrients, these are
nutrient-dense, meaning they''re low in calories but high in vitamins and
minerals.</span><span style="font-family: Arial;"> Have antibacterial properties and controls blood sugar
level. Comes in safe and secure packing.</span><span style="font-size:12.0pt;
font-family:&quot;Segoe UI Semibold&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>', 3, N'ca55150b-f5a9-4fb2-8a45-e84b8bb8b459.jpg', 7)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId]) VALUES (15, N'Broccoli', N'<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="font-size: 12pt; font-family: Arial; color: rgb(15, 17, 17); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">100% genuine and adulteration-free product. </span><span style="font-size: 12pt; font-family: &quot;Segoe UI Semibold&quot;, sans-serif; color: rgb(32, 33, 36); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="font-family: Arial;">Good source of fiber and protein, and contains
iro</span><span style="font-family: Arial;">n,</span>&nbsp;</span>potassium<span style="font-family: Arial;">,&nbsp;</span>calcium<span style="font-family: Arial;">, selenium and magnesium as well as</span> vitamins<span style="font-family: Arial;">. </span><span style="font-size: 12pt; font-family: Arial; color: rgb(15, 17, 17);">Free from harmful
chemicals, pesticides &amp; no additives.&nbsp;</span><span style="font-size:12.0pt;
font-family:&quot;Segoe UI Semibold&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>', 4, N'1a6872aa-a82f-4fc1-8572-c1d39ac1bd15.jpg', 7)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId]) VALUES (16, N'Capsicum', N'<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><font color="#0f1111" face="Segoe UI Semibold, sans-serif"><span style="font-size: 12pt; font-family: Arial;">Fresh, hygienic and
natural. Good source of Vitamin A, C, E, and dietary </span><span style="font-family: Arial;">fiber</span><span style="font-size: 12pt;"><span style="font-family: Arial;">. Improves immunity
and cues iron deficiency. Store in cool and dry place, away from direct
sunlight.</span><o:p></o:p></span></font></p>', 4, N'41c7ab42-3cbd-414a-afc4-48bd048066c0.jpg', 7)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId]) VALUES (17, N'Spinach', N'<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="font-size:12.0pt;font-family:&quot;Segoe UI Semibold&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F1111"><span style="font-family: Arial;">Rich in nutrients and has
low fat and calories. Can be used in curries, soups and salads. Store in
refrigerator at a temperature of 0-5 degree Celsius. Store in cool and dry
place, away from direct sunlight.</span><o:p></o:p></span></p>', 2, N'648da306-f9aa-43fd-92b2-774b13b0d100.jpg', 7)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 28-03-2021 15:48:13 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 28-03-2021 15:48:13 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 28-03-2021 15:48:13 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 28-03-2021 15:48:13 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 28-03-2021 15:48:13 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 28-03-2021 15:48:13 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 28-03-2021 15:48:13 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_CategoryId]    Script Date: 28-03-2021 15:48:13 ******/
CREATE NONCLUSTERED INDEX [IX_Product_CategoryId] ON [dbo].[Product]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT (N'') FOR [Name]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [POC] SET  READ_WRITE 
GO
