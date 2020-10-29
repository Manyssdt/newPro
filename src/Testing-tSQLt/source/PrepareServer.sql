IF OBJECT_ID('tempdb..#Private_GetAssemblyKeyBytes') IS NOT NULL DROP PROCEDURE #Private_GetAssemblyKeyBytes;
GO
CREATE PROCEDURE #Private_GetAssemblyKeyBytes
   @AssemblyKeyBytes VARBINARY(MAX) = NULL OUTPUT,
   @AssemblyKeyThumbPrint VARBINARY(MAX) = NULL OUTPUT
AS
  SELECT @AssemblyKeyBytes =
0x4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000800000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062+
0x652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000504500004C0103000C038D5F0000000000000000E00022200B013000000A0000000600000000000042280000002000000040000000000010002000000002000004000000000000+
0x00040000000000000000800000000200006E780000030040850000100000100000000010000010000000000000100000000000000000000000F02700004F00000000400000A003000000000000000000000000000000000000006000000C000000B82600+
0x001C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000080000000000000000000000082000004800000000000000000000002E746578740000004808000000200000000A0000000200+
0x00000000000000000000000000200000602E72737263000000A00300000040000000040000000C0000000000000000000000000000400000402E72656C6F6300000C00000000600000000200000010000000000000000000000000000040000042000000+
0x000000000000000000000000002428000000000000480000000200050058200000E005000009000000000000000000000000000000382600008000000000000000000000000000000000000000000000000000000000000000000000001E02280F00000A+
0x2A42534A4201000100000000000C00000076322E302E35303732370000000005006C000000A8010000237E0000140200002C02000023537472696E67730000000040040000040000002355530044040000100000002347554944000000540400008C0100+
0x0023426C6F620000000000000002000001471400000900000000FA013300160000010000001000000002000000010000000F0000000E0000000100000001000000000078010100000000000600ED00DE0106005A01DE0106002100AC010F00FE01000006+
0x00490094010600D00094010600B100940106004101940106000D01940106002601940106007900940106003500BF0106001300BF0106009400940106006000940106000D028D010000000001000000000001000100000010002502140241000100010050+
0x20000000008618A601060001000900A60101001100A60106001900A6010A002900A60110003100A60110003900A60110004100A60110004900A60110005100A60110005900A60110006100A60115006900A60110007100A60110007900A60110008100A6+
0x0106002E000B00C5002E001300CE002E001B00ED002E002300F6002E002B000C012E0033000C012E003B000C012E00430012012E004B001D012E0053000C012E005B000C012E00630035012E006B005F012E0073006C0104800000010000000000000001+
0x0000002300140200000200000000000000000000001A000A000000000000000000003C4D6F64756C653E006D73636F726C696200477569644174747269627574650044656275676761626C6541747472696275746500436F6D56697369626C6541747472+
0x696275746500417373656D626C795469746C6541747472696275746500417373656D626C794B65794E616D6541747472696275746500417373656D626C7954726164656D61726B41747472696275746500417373656D626C7946696C6556657273696F6E+
0x41747472696275746500417373656D626C79436F6E66696775726174696F6E41747472696275746500417373656D626C794465736372697074696F6E41747472696275746500436F6D70696C6174696F6E52656C61786174696F6E734174747269627574+
0x6500417373656D626C7950726F6475637441747472696275746500417373656D626C79436F7079726967687441747472696275746500417373656D626C79436F6D70616E794174747269627574650052756E74696D65436F6D7061746962696C69747941+
0x7474726962757465007453514C74417373656D626C794B65792E646C6C0053797374656D0053797374656D2E5265666C656374696F6E002E63746F720053797374656D2E446961676E6F73746963730053797374656D2E52756E74696D652E496E746572+
0x6F7053657276696365730053797374656D2E52756E74696D652E436F6D70696C6572536572766963657300446562756767696E674D6F646573004F626A656374007453514C74417373656D626C794B657900656D707479000000000000D566EE860FB64A+
0x4E99903912D8DD6EF500042001010803200001052001011111042001010E042001010208B77A5C561934E08980A00024000004800000940000000602000000240000525341310004000001000100B9AF416AD8DFEDEC08A5652FA257F1242BF4ED60EF5A+
0x7B84A429604D62C919C5663A9C7710A7C5DF9953B69EC89FCE85D71E051140B273F4C9BF890A2BC19C48F22D7B1F1D739F90EEBC5729555F7F8B63ED088BBB083B336F7E38B92D44CFE1C842F09632B85114772FF2122BC638C78D497C4E88C2D656C166+
0x050D6E1EF3940801000800000000001E01000100540216577261704E6F6E457863657074696F6E5468726F777301080100020000000000150100107453514C74417373656D626C794B657900000501000000000A0100057453514C74000017010012436F+
0x7079726967687420C2A920203230313900002901002430333536303035622D373166642D346466332D383530322D32376336613630366539653800000C010007312E302E302E3000001D0100187453514C745F4F6666696369616C5369676E696E674B65+
0x790000000088EF76ED3B22AC6E0194A36A4D080D3A742B65B153E4FE363537560C3503A9ACAB7E3EB25FAB97C11C1FB1CE23F7E3566F08BBFD975650A392973323DBA693B509D547850A7A0FF5CA9B7B438F03CB79658DAEC2B01BA81C0BB2C9966CB5BF+
0x8C110CF16DBD55601DC8EDE9F6675671A0A4EA1469B1B6F75DB305333A706C2B88000000000C038D5F00000000020000001C010000D4260000D408000052534453FC05D33E68A1FE408A0C0D90EACD290001000000443A5C615C315C735C7453514C7443+
0x4C525C7453514C74417373656D626C794B65795C6F626A5C437275697365436F6E74726F6C5C7453514C74417373656D626C794B65792E706462000000000000000000000000000000000000000000000000000000000000000000000000000000000000+
0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000+
0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001828000000000000000000003228000000200000000000000000000000000000000000000000000024280000000000000000000000005F+
0x436F72446C6C4D61696E006D73636F7265652E646C6C0000000000FF250020001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000+
0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000+
0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000+
0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000+
0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001001000000018000080000000+
0x00000000000000000000000100010000003000008000000000000000000000000000000100000000004800000058400000440300000000000000000000440334000000560053005F00560045005200530049004F004E005F0049004E0046004F00000000+
0x00BD04EFFE00000100000001000000000000000100000000003F000000000000000400000002000000000000000000000000000000440000000100560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073+
0x006C006100740069006F006E00000000000000B004A4020000010053007400720069006E006700460069006C00650049006E0066006F0000008002000001003000300030003000300034006200300000001A000100010043006F006D006D0065006E0074+
0x00730000000000000022000100010043006F006D00700061006E0079004E0061006D00650000000000000000004A0011000100460069006C0065004400650073006300720069007000740069006F006E00000000007400530051004C0074004100730073+
0x0065006D0062006C0079004B006500790000000000300008000100460069006C006500560065007200730069006F006E000000000031002E0030002E0030002E00300000004A001500010049006E007400650072006E0061006C004E0061006D00650000+
0x007400530051004C00740041007300730065006D0062006C0079004B00650079002E0064006C006C00000000004800120001004C006500670061006C0043006F007000790072006900670068007400000043006F00700079007200690067006800740020+
0x00A90020002000320030003100390000002A00010001004C006500670061006C00540072006100640065006D00610072006B00730000000000000000005200150001004F0072006900670069006E0061006C00460069006C0065006E0061006D00650000+
0x007400530051004C00740041007300730065006D0062006C0079004B00650079002E0064006C006C00000000002C0006000100500072006F0064007500630074004E0061006D006500000000007400530051004C0074000000340008000100500072006F+
0x006400750063007400560065007200730069006F006E00000031002E0030002E0030002E003000000038000800010041007300730065006D0062006C0079002000560065007200730069006F006E00000031002E0030002E0030002E0030000000000000+
0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000+
0x000C0000004438000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000+
0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000+
0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000+
0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000+
0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000+
0x000000000000000000 
  ,@AssemblyKeyThumbPrint = 0xE8FFF6F136D7B53E ;
GO
IF OBJECT_ID('tempdb..#Private_EnableCLR') IS NOT NULL DROP PROCEDURE #Private_EnableCLR;
GO
CREATE PROCEDURE #Private_EnableCLR
AS
BEGIN
  EXEC master.sys.sp_configure @configname='clr enabled', @configvalue = 1;
  RECONFIGURE;
END;
GO
IF OBJECT_ID('tempdb..#Private_GetSQLProductMajorVersion') IS NOT NULL DROP PROCEDURE #Private_GetSQLProductMajorVersion;
GO
CREATE PROCEDURE #Private_GetSQLProductMajorVersion
AS
  RETURN CAST(PARSENAME(CAST(SERVERPROPERTY('ProductVersion') AS NVARCHAR(MAX)),4) AS INT);
GO
DECLARE @Version INT;
EXEC @Version = #Private_GetSQLProductMajorVersion;
PRINT @Version;
GO
IF OBJECT_ID('tempdb..#RemoveAssemblyKey') IS NOT NULL DROP PROCEDURE #RemoveAssemblyKey;
GO
CREATE PROCEDURE #RemoveAssemblyKey
AS
BEGIN
  IF(NOT EXISTS(SELECT * FROM sys.fn_my_permissions(NULL,'server') AS FMP WHERE FMP.permission_name = 'CONTROL SERVER'))
  BEGIN
    RAISERROR('Only principals with CONTROL SERVER permission can execute this procedure.',16,10);
    RETURN -1;
  END;
  DECLARE @master_sys_sp_executesql NVARCHAR(MAX); SET @master_sys_sp_executesql = 'master.sys.sp_executesql';
  DECLARE @ProductMajorVersion INT;
  EXEC @ProductMajorVersion = #Private_GetSQLProductMajorVersion;
  IF SUSER_ID('tSQLtAssemblyKey') IS NOT NULL DROP LOGIN tSQLtAssemblyKey;
  EXEC @master_sys_sp_executesql N'IF ASYMKEY_ID(''tSQLtAssemblyKey'') IS NOT NULL DROP ASYMMETRIC KEY tSQLtAssemblyKey;';
  EXEC @master_sys_sp_executesql N'IF EXISTS(SELECT * FROM sys.assemblies WHERE name = ''tSQLtAssemblyKey'') DROP ASSEMBLY tSQLtAssemblyKey;';
  DECLARE @cmd NVARCHAR(MAX);
  IF(@ProductMajorVersion>=14)
  BEGIN
    DECLARE @TrustedHash NVARCHAR(MAX);
    DECLARE @AssemblyKeyBytes VARBINARY(MAX);
    EXEC #Private_GetAssemblyKeyBytes @AssemblyKeyBytes = @AssemblyKeyBytes OUT;
    SELECT @TrustedHash = CONVERT(NVARCHAR(MAX),HASHBYTES('SHA2_512',@AssemblyKeyBytes),1);
    SELECT @cmd = 
           'IF EXISTS(SELECT 1 FROM sys.trusted_assemblies WHERE hash = ' + @TrustedHash +' AND description = ''tSQLt Ephemeral'')'+
           'EXEC sys.sp_drop_trusted_assembly @hash = ' + @TrustedHash + ';';
    EXEC master.sys.sp_executesql @cmd;
  END;
END;
GO
IF OBJECT_ID('tempdb..#InstallAssemblyKey') IS NOT NULL DROP PROCEDURE #InstallAssemblyKey;
GO
CREATE PROCEDURE #InstallAssemblyKey
AS
BEGIN
  IF(NOT EXISTS(SELECT * FROM sys.fn_my_permissions(NULL,'server') AS FMP WHERE FMP.permission_name = 'CONTROL SERVER'))
  BEGIN
    RAISERROR('Only principals with CONTROL SERVER permission can execute this procedure.',16,10);
    RETURN -1;
  END;
  DECLARE @cmd NVARCHAR(MAX);
  DECLARE @cmd2 NVARCHAR(MAX);
  DECLARE @master_sys_sp_executesql NVARCHAR(MAX); SET @master_sys_sp_executesql = 'master.sys.sp_executesql';
  DECLARE @ProductMajorVersion INT;
  EXEC @ProductMajorVersion = #Private_GetSQLProductMajorVersion;
  DECLARE @AssemblyKeyBytes VARBINARY(MAX),
          @AssemblyKeyThumbPrint VARBINARY(MAX);
  EXEC #Private_GetAssemblyKeyBytes @AssemblyKeyBytes OUT, @AssemblyKeyThumbPrint OUT;
  SET @cmd = 'IF EXISTS(SELECT * FROM sys.assemblies WHERE name = ''tSQLtAssemblyKey'') DROP ASSEMBLY tSQLtAssemblyKey;';
  EXEC @master_sys_sp_executesql @cmd;
  SET @cmd2 = 'SELECT @cmd = ''DROP ASSEMBLY ''+QUOTENAME(A.name)+'';'''+ 
              '  FROM master.sys.assemblies AS A'+
              ' WHERE A.clr_name LIKE ''tsqltassemblykey, %'';';
  EXEC sys.sp_executesql @cmd2,N'@cmd NVARCHAR(MAX) OUTPUT',@cmd OUT;
  EXEC @master_sys_sp_executesql @cmd;
  DECLARE @Hash VARBINARY(64) = NULL;
  IF(@ProductMajorVersion>=14)
  BEGIN
    SELECT @Hash = HASHBYTES('SHA2_512',@AssemblyKeyBytes);
    SELECT @cmd = 
           'IF NOT EXISTS (SELECT * FROM sys.trusted_assemblies WHERE [hash] = @Hash)'+
           'BEGIN'+
           '  EXEC sys.sp_add_trusted_assembly @hash = @Hash, @description = N''tSQLt Ephemeral'';'+
           'END ELSE BEGIN'+
           '  SELECT @Hash = NULL FROM sys.trusted_assemblies WHERE [hash] = @Hash AND description <> ''tSQLt Ephemeral'';'+
           'END;';
    EXEC @master_sys_sp_executesql @cmd, N'@Hash VARBINARY(64) OUTPUT',@Hash OUT;
  END;
  SELECT @cmd = 
         'CREATE ASSEMBLY tSQLtAssemblyKey AUTHORIZATION dbo FROM ' +
         CONVERT(NVARCHAR(MAX),@AssemblyKeyBytes,1) +
         ' WITH PERMISSION_SET = SAFE;'
  EXEC @master_sys_sp_executesql @cmd;
  IF SUSER_ID('tSQLtAssemblyKey') IS NOT NULL DROP LOGIN tSQLtAssemblyKey;
  SET @cmd = N'IF ASYMKEY_ID(''tSQLtAssemblyKey'') IS NOT NULL DROP ASYMMETRIC KEY tSQLtAssemblyKey;';
  EXEC @master_sys_sp_executesql @cmd;
  SET @cmd2 = 'SELECT @cmd = ISNULL(''DROP LOGIN ''+QUOTENAME(SP.name)+'';'','''')+''DROP ASYMMETRIC KEY '' + QUOTENAME(AK.name) + '';'''+
              '  FROM master.sys.asymmetric_keys AS AK'+
              '  LEFT JOIN master.sys.server_principals AS SP'+
              '    ON AK.sid = SP.sid'+
              ' WHERE AK.thumbprint = @AssemblyKeyThumbPrint;';
  EXEC sys.sp_executesql @cmd2,N'@cmd NVARCHAR(MAX) OUTPUT, @AssemblyKeyThumbPrint VARBINARY(MAX)',@cmd OUT, @AssemblyKeyThumbPrint;
  EXEC @master_sys_sp_executesql @cmd;
  SET @cmd = 'CREATE ASYMMETRIC KEY tSQLtAssemblyKey FROM ASSEMBLY tSQLtAssemblyKey;';
  EXEC @master_sys_sp_executesql @cmd;
  SET @cmd = 'CREATE LOGIN tSQLtAssemblyKey FROM ASYMMETRIC KEY tSQLtAssemblyKey;';
  EXEC @master_sys_sp_executesql @cmd;
  SET @cmd = 'DROP ASSEMBLY tSQLtAssemblyKey;';
  EXEC @master_sys_sp_executesql @cmd;
  IF(@Hash IS NOT NULL)
  BEGIN
    SELECT @cmd = 'EXEC sys.sp_drop_trusted_assembly @hash = @Hash;';
    EXEC @master_sys_sp_executesql @cmd, N'@Hash VARBINARY(64)',@Hash;
  END;
  IF(@ProductMajorVersion>=14)
  BEGIN
    SET @cmd = 'GRANT UNSAFE ASSEMBLY TO tSQLtAssemblyKey;';
  END
  ELSE
  BEGIN
    SET @cmd = 'GRANT EXTERNAL ACCESS ASSEMBLY TO tSQLtAssemblyKey;';
  END;
  EXEC @master_sys_sp_executesql @cmd;
END;
GO
IF OBJECT_ID('tempdb..#PrepareServer') IS NOT NULL DROP PROCEDURE #PrepareServer;
GO
CREATE PROCEDURE #PrepareServer
AS
BEGIN
  EXEC #Private_EnableCLR;
  EXEC #InstallAssemblyKey;
END;
GO
EXEC #PrepareServer;
GO
