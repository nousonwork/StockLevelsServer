-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE DATABASE "sldb" ----------------------------------
CREATE DATABASE IF NOT EXISTS `sldb` CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sldb`;
-- ---------------------------------------------------------


-- CREATE TABLE "SNames" -----------------------------------
DROP TABLE IF EXISTS `SNames` CASCADE;

CREATE TABLE `SNames` ( 
	`SId` BigInt( 255 ) AUTO_INCREMENT NOT NULL, 
	`Names` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`TypeId` BigInt( 255 ) NOT NULL,
	 PRIMARY KEY ( `SId` )
, 
	CONSTRAINT `unique_SId` UNIQUE( `SId` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "SType" ------------------------------------
DROP TABLE IF EXISTS `SType` CASCADE;

CREATE TABLE `SType` ( 
	`TypeId` BigInt( 255 ) AUTO_INCREMENT NOT NULL, 
	`TypeName` VarChar( 5 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	 PRIMARY KEY ( `TypeId` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "Levels" -----------------------------------
DROP TABLE IF EXISTS `Levels` CASCADE;

CREATE TABLE `Levels` ( 
	`LevelId` BigInt( 255 ) AUTO_INCREMENT NOT NULL, 
	`SId` BigInt( 255 ) NOT NULL, 
	`TypeId` BigInt( 255 ) NOT NULL, 
	`LowerValue` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`UpperValue` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	 PRIMARY KEY ( `LevelId` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "EMAType" ----------------------------------
DROP TABLE IF EXISTS `EMAType` CASCADE;

CREATE TABLE `EMAType` ( 
	`EMAId` BigInt( 255 ) AUTO_INCREMENT NOT NULL, 
	`EMAValue` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
, 
	CONSTRAINT `EMAId` UNIQUE( `EMAId` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "EMAValue" ---------------------------------
DROP TABLE IF EXISTS `EMAValue` CASCADE;

CREATE TABLE `EMAValue` ( 
	`EMAValueId` BigInt( 255 ) AUTO_INCREMENT NOT NULL, 
	`EMAId` BigInt( 255 ) NOT NULL, 
	`SId` BigInt( 255 ) NOT NULL, 
	`Value` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	 PRIMARY KEY ( `EMAValueId` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "SData" ------------------------------------
DROP TABLE IF EXISTS `SData` CASCADE;

CREATE TABLE `SData` ( 
	`SDataId` BigInt( 255 ) AUTO_INCREMENT NOT NULL, 
	`SId` BigInt( 255 ) NOT NULL, 
	`CSVData` Blob NOT NULL,
	 PRIMARY KEY ( `SDataId` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- Dump data of "SNames" -----------------------------------
-- ---------------------------------------------------------


-- Dump data of "SType" ------------------------------------
-- ---------------------------------------------------------


-- Dump data of "Levels" -----------------------------------
-- ---------------------------------------------------------


-- Dump data of "EMAType" ----------------------------------
-- ---------------------------------------------------------


-- Dump data of "EMAValue" ---------------------------------
-- ---------------------------------------------------------


-- Dump data of "SData" ------------------------------------
-- ---------------------------------------------------------


-- CREATE DIAGRAMS TABLE "vs_database_diagrams" ------------
CREATE TABLE IF NOT EXISTS vs_database_diagrams( name Char(80), diadata Text, comment VarChar(1022), preview Text, lockinfo Char(80), locktime Timestamp, version Char(80) );
-- ---------------------------------------------------------


-- Dump data of "vs_database_diagrams" ---------------------
/*!40000 ALTER TABLE `vs_database_diagrams` DISABLE KEYS */

BEGIN;

INSERT INTO `vs_database_diagrams`(`name`,`diadata`,`comment`,`preview`,`lockinfo`,`locktime`,`version`) VALUES ( 'SLDB_Schema_Map', 'PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPHByb3BlcnRpZXM+Cgk8Q29udHJvbHM+CgkJPFNMREJfU2NoZW1hX01hcD4KCQkJPFByb3BlcnRpZXM+CgkJCQk8XmxvY2sgdmFsdWU9IjAiLz4KCQkJCTxiYWNrX2NvbG9yIHZhbHVlPSJGRkZGRkYiLz4KCQkJCTxnYW1tYSB2YWx1ZT0iMCIvPgoJCQkJPG5hbWUgdmFsdWU9IlNMREJfU2NoZW1hX01hcCIvPgoJCQkJPHNpemUgdmFsdWU9IjIwNDg7MjA0OCIvPgoJCQkJPHN0eWxlIHZhbHVlPSI0Ii8+CgkJCQk8c3R5bGVfbGlua3MgdmFsdWU9IjAiLz4KCQkJCTx1bml0cyB2YWx1ZT0iNSIvPgoJCQk8L1Byb3BlcnRpZXM+CgkJCTxUeXBlIHZhbHVlPSJEaWFncmFtIi8+CgkJPC9TTERCX1NjaGVtYV9NYXA+CgkJPFRhYmxlPgoJCQk8UGFyZW50IHZhbHVlPSIjVE9QIi8+CgkJCTxQcm9wZXJ0aWVzPgoJCQkJPF5jaGVja3MgdmFsdWU9IjAiLz4KCQkJCTxeZ3JvdXAgdmFsdWU9Ii0xIi8+CgkJCQk8XmhlaWdodCB2YWx1ZT0iMTIyIi8+CgkJCQk8XmluZGV4ZXMgdmFsdWU9IjAiLz4KCQkJCTxebGV2ZWwgdmFsdWU9IjEiLz4KCQkJCTxebGlua3MgdmFsdWU9IjAiLz4KCQkJCTxebG9jayB2YWx1ZT0iMCIvPgoJCQkJPF5tZXRob2RzIHZhbHVlPSIwIi8+CgkJCQk8Xm1pbmltaXplZCB2YWx1ZT0iMCIvPgoJCQkJPF5wcm9wZXJ0aWVzIHZhbHVlPSIwIi8+CgkJCQk8XnRyaWdnZXJzIHZhbHVlPSIwIi8+CgkJCQk8XnVuaXF1ZXMgdmFsdWU9IjAiLz4KCQkJCTxiYWNrX2NvbG9yIHZhbHVlPSJCNEQ2NDcwMCIvPgoJCQkJPG5hbWUgdmFsdWU9IlRhYmxlIi8+CgkJCQk8cG9zaXRpb24gdmFsdWU9IjIyOzM1Ii8+CgkJCQk8c2l6ZSB2YWx1ZT0iMTUxOzEyMiIvPgoJCQk8L1Byb3BlcnRpZXM+CgkJCTxUeXBlIHZhbHVlPSJUYWJsZSIvPgoJCTwvVGFibGU+CgkJPFRhYmxlMT4KCQkJPFBhcmVudCB2YWx1ZT0iI1RPUCIvPgoJCQk8UHJvcGVydGllcz4KCQkJCTxeY2hlY2tzIHZhbHVlPSIwIi8+CgkJCQk8Xmdyb3VwIHZhbHVlPSItMSIvPgoJCQkJPF5oZWlnaHQgdmFsdWU9Ii0xIi8+CgkJCQk8XmluZGV4ZXMgdmFsdWU9IjAiLz4KCQkJCTxebGV2ZWwgdmFsdWU9IjIiLz4KCQkJCTxebGlua3MgdmFsdWU9IjAiLz4KCQkJCTxebG9jayB2YWx1ZT0iMCIvPgoJCQkJPF5tZXRob2RzIHZhbHVlPSIwIi8+CgkJCQk8Xm1pbmltaXplZCB2YWx1ZT0iMCIvPgoJCQkJPF5wcm9wZXJ0aWVzIHZhbHVlPSIwIi8+CgkJCQk8XnRyaWdnZXJzIHZhbHVlPSIwIi8+CgkJCQk8XnVuaXF1ZXMgdmFsdWU9IjAiLz4KCQkJCTxiYWNrX2NvbG9yIHZhbHVlPSJCNEQ2NDcwMCIvPgoJCQkJPG5hbWUgdmFsdWU9IlRhYmxlMSIvPgoJCQkJPHBvc2l0aW9uIHZhbHVlPSIzMTg7MjYiLz4KCQkJCTxzaXplIHZhbHVlPSIxNTg7MTA0Ii8+CgkJCTwvUHJvcGVydGllcz4KCQkJPFR5cGUgdmFsdWU9IlRhYmxlIi8+CgkJPC9UYWJsZTE+Cgk8L0NvbnRyb2xzPgoJPEVkaXRvcnM+CgkJPHNsZGI+CgkJCTxlMD4KCQkJCTxkYXRhIHZhbHVlPScmbHQ7P3htbCB2ZXJzaW9uPSIxLjAiIGVuY29kaW5nPSJ1dGYtOCI/Jmd0OwombHQ7cHJvcGVydGllcyZndDsKCSZsdDtQYWdlIHZhbHVlPSIwIi8mZ3Q7CgkmbHQ7U2VsZWN0aW9uRmllbGQgdmFsdWU9Ii0xIi8mZ3Q7CgkmbHQ7U2VsZWN0aW9uSW5kZXggdmFsdWU9Ii0xIi8mZ3Q7CgkmbHQ7U2VsZWN0aW9uVHJpZ2dlciB2YWx1ZT0iLTEiLyZndDsKCSZsdDtTZWxlY3Rpb25UcmlnZ2VyVGFiIHZhbHVlPSIwIi8mZ3Q7CiZsdDsvcHJvcGVydGllcyZndDsKCicvPgoJCQkJPG5hbWUgdmFsdWU9IlNUeXBlIi8+CgkJCQk8dHlwZSB2YWx1ZT0iMjciLz4KCQkJPC9lMD4KCQk8L3NsZGI+Cgk8L0VkaXRvcnM+Cgk8R1VJPgoJCTxGdWxsVG9vbGJhckxlZnQgdmFsdWU9IjEiLz4KCQk8RnVsbFRvb2xiYXJSaWdodCB2YWx1ZT0iMSIvPgoJCTxQYWdlRWRpdG9yIHZhbHVlPSIwIi8+CgkJPFBhZ2VFZGl0b3JIIHZhbHVlPSIyODAiLz4KCQk8UGFnZVRvb2xiYXJMZWZ0IHZhbHVlPSIwIi8+CgkJPFBhZ2VUb29sYmFyUkIgdmFsdWU9IjAiLz4KCQk8UGFnZVRvb2xiYXJSaWdodCB2YWx1ZT0iMCIvPgoJCTxQYW5lQ2xpcGJvYXJkIHZhbHVlPSIwIi8+CgkJPFBhbmVMYXlvdXQgdmFsdWU9IjAiLz4KCQk8UGFuZVZpZXcgdmFsdWU9IjAiLz4KCQk8U2Nyb2xsWCB2YWx1ZT0iMCIvPgoJCTxTY3JvbGxZIHZhbHVlPSIwIi8+CgkJPFNlbGVjdGlvbiB2YWx1ZT0iVTB4RVFsOVRZMmhsYldGZlRXRnciLz4KCQk8U2hvd0FsbCB2YWx1ZT0iMSIvPgoJCTxTaG93Q2hhbmdlcyB2YWx1ZT0iMSIvPgoJCTxTaG93R0wgdmFsdWU9IjEiLz4KCQk8U2hvd0dyaWQgdmFsdWU9IjEiLz4KCQk8VXNlR3JpZCB2YWx1ZT0iMCIvPgoJPC9HVUk+Cgk8TW9kZWw+CgkJPHNsZGI+CgkJCTx0YWJsZT4KCQkJCTxvMD4KCQkJCQk8Q2hhbmdlcyB2YWx1ZT0iIi8+CgkJCQkJPFByb3BlcnRpZXM+CgkJCQkJCTxBdXRvaW5jcmVtZW50IHZhbHVlPSIxIi8+CgkJCQkJCTxBdmVyYWdlX1Jvd19TaXplIHZhbHVlPSIwIi8+CgkJCQkJCTxDaGFyc2V0IHZhbHVlPSJ1dGY4Ii8+CgkJCQkJCTxDb2xsYXRpb24gdmFsdWU9InV0ZjhfZ2VuZXJhbF9jaSIvPgoJCQkJCQk8Q29tbWVudCB2YWx1ZT0iIi8+CgkJCQkJCTxDcmVhdGVfVGltZSB2YWx1ZT0iMjAxNS0xMC0xMyAxOTozNDo1MSIvPgoJCQkJCQk8RW5naW5lIHZhbHVlPSJJbm5vREIiLz4KCQkJCQkJPEZpZWxkX0NvdW50IHZhbHVlPSIzIi8+CgkJCQkJCTxJbmRleF9Db3VudCB2YWx1ZT0iMiIvPgoJCQkJCQk8TGlua19Db3VudCB2YWx1ZT0iMCIvPgoJCQkJCQk8TmFtZSB2YWx1ZT0iU05hbWVzIi8+CgkJCQkJCTxQcmltYXJ5X0tleSB2YWx1ZT0iVTBsayIvPgoJCQkJCQk8UmVjb3JkX0NvdW50IHZhbHVlPSIwIi8+CgkJCQkJCTxTaXplIHZhbHVlPSIzMi4wMCBLYiIvPgoJCQkJCQk8VHJpZ2dlcl9Db3VudCB2YWx1ZT0iMCIvPgoJCQkJCQk8VW5pcXVlX0NvdW50IHZhbHVlPSIyIi8+CgkJCQkJCTxVcGRhdGVfVGltZSB2YWx1ZT0iIi8+CgkJCQkJPC9Qcm9wZXJ0aWVzPgoJCQkJCTxjb250cm9sIHZhbHVlPSJUYWJsZSIvPgoJCQkJCTxkZWxldGUgdmFsdWU9IjAiLz4KCQkJCQk8ZmllbGQ+CgkJCQkJCTxvMD4KCQkJCQkJCTxDaGFuZ2VzIHZhbHVlPSIiLz4KCQkJCQkJCTxQcm9wZXJ0aWVzPgoJCQkJCQkJCTxBdXRvaW5jcmVtZW50IHZhbHVlPSIwIi8+CgkJCQkJCQkJPENoYXJzZXQgdmFsdWU9InV0ZjgiLz4KCQkJCQkJCQk8Q29sbGF0aW9uIHZhbHVlPSJ1dGY4X2dlbmVyYWxfY2kiLz4KCQkJCQkJCQk8Q29tbWVudCB2YWx1ZT0iIi8+CgkJCQkJCQkJPERlZmF1bHRfVmFsdWUgdmFsdWU9IiIvPgoJCQkJCQkJCTxGaWVsZF9Qb3NpdGlvbiB2YWx1ZT0iMiIvPgoJCQkJCQkJCTxJbmRleGVkIHZhbHVlPSIwIi8+CgkJCQkJCQkJPExlbmd0aCB2YWx1ZT0iMjU1Ii8+CgkJCQkJCQkJPE5hbWUgdmFsdWU9Ik5hbWVzIi8+CgkJCQkJCQkJPE51bGxhYmxlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPE9uX1VwZGF0ZV9TZXRfQ3VycmVudCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxQcmVjaXNpb24gdmFsdWU9IjAiLz4KCQkJCQkJCQk8U2NhbGUgdmFsdWU9IjAiLz4KCQkJCQkJCQk8VHlwZSB2YWx1ZT0iVmFyQ2hhciIvPgoJCQkJCQkJCTxVbmlxdWUgdmFsdWU9IjAiLz4KCQkJCQkJCQk8VW5zaWduZWQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8WmVyb2ZpbGwgdmFsdWU9IjAiLz4KCQkJCQkJCTwvUHJvcGVydGllcz4KCQkJCQkJCTxjb250cm9sIHZhbHVlPSIiLz4KCQkJCQkJCTxkZWxldGUgdmFsdWU9IjAiLz4KCQkJCQkJCTxuYW1lIHZhbHVlPSJOYW1lcyIvPgoJCQkJCQk8L28wPgoJCQkJCQk8bzE+CgkJCQkJCQk8Q2hhbmdlcyB2YWx1ZT0iIi8+CgkJCQkJCQk8UHJvcGVydGllcz4KCQkJCQkJCQk8QXV0b2luY3JlbWVudCB2YWx1ZT0iMSIvPgoJCQkJCQkJCTxDaGFyc2V0IHZhbHVlPSIiLz4KCQkJCQkJCQk8Q29sbGF0aW9uIHZhbHVlPSIiLz4KCQkJCQkJCQk8Q29tbWVudCB2YWx1ZT0iIi8+CgkJCQkJCQkJPERlZmF1bHRfVmFsdWUgdmFsdWU9IiIvPgoJCQkJCQkJCTxGaWVsZF9Qb3NpdGlvbiB2YWx1ZT0iMSIvPgoJCQkJCQkJCTxJbmRleGVkIHZhbHVlPSIxIi8+CgkJCQkJCQkJPExlbmd0aCB2YWx1ZT0iMjU1Ii8+CgkJCQkJCQkJPE5hbWUgdmFsdWU9IlNJZCIvPgoJCQkJCQkJCTxOdWxsYWJsZSB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxPbl9VcGRhdGVfU2V0X0N1cnJlbnQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8UHJlY2lzaW9uIHZhbHVlPSIxOSIvPgoJCQkJCQkJCTxTY2FsZSB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxUeXBlIHZhbHVlPSJCaWdJbnQiLz4KCQkJCQkJCQk8VW5pcXVlIHZhbHVlPSIxIi8+CgkJCQkJCQkJPFVuc2lnbmVkIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFplcm9maWxsIHZhbHVlPSIwIi8+CgkJCQkJCQk8L1Byb3BlcnRpZXM+CgkJCQkJCQk8Y29udHJvbCB2YWx1ZT0iIi8+CgkJCQkJCQk8ZGVsZXRlIHZhbHVlPSIwIi8+CgkJCQkJCQk8bmFtZSB2YWx1ZT0iU0lkIi8+CgkJCQkJCTwvbzE+CgkJCQkJCTxvMj4KCQkJCQkJCTxDaGFuZ2VzIHZhbHVlPSIiLz4KCQkJCQkJCTxQcm9wZXJ0aWVzPgoJCQkJCQkJCTxBdXRvaW5jcmVtZW50IHZhbHVlPSIwIi8+CgkJCQkJCQkJPENoYXJzZXQgdmFsdWU9IiIvPgoJCQkJCQkJCTxDb2xsYXRpb24gdmFsdWU9IiIvPgoJCQkJCQkJCTxDb21tZW50IHZhbHVlPSIiLz4KCQkJCQkJCQk8RGVmYXVsdF9WYWx1ZSB2YWx1ZT0iIi8+CgkJCQkJCQkJPEZpZWxkX1Bvc2l0aW9uIHZhbHVlPSIzIi8+CgkJCQkJCQkJPEluZGV4ZWQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8TGVuZ3RoIHZhbHVlPSIyNTUiLz4KCQkJCQkJCQk8TmFtZSB2YWx1ZT0iVHlwZUlkIi8+CgkJCQkJCQkJPE51bGxhYmxlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPE9uX1VwZGF0ZV9TZXRfQ3VycmVudCB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxQcmVjaXNpb24gdmFsdWU9IjE5Ii8+CgkJCQkJCQkJPFNjYWxlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFR5cGUgdmFsdWU9IkJpZ0ludCIvPgoJCQkJCQkJCTxVbmlxdWUgdmFsdWU9IjAiLz4KCQkJCQkJCQk8VW5zaWduZWQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8WmVyb2ZpbGwgdmFsdWU9IjAiLz4KCQkJCQkJCTwvUHJvcGVydGllcz4KCQkJCQkJCTxjb250cm9sIHZhbHVlPSIiLz4KCQkJCQkJCTxkZWxldGUgdmFsdWU9IjAiLz4KCQkJCQkJCTxuYW1lIHZhbHVlPSJUeXBlSWQiLz4KCQkJCQkJPC9vMj4KCQkJCQk8L2ZpZWxkPgoJCQkJCTxpbmRleD4KCQkJCQkJPG8wPgoJCQkJCQkJPENoYW5nZXMgdmFsdWU9IiIvPgoJCQkJCQkJPFByb3BlcnRpZXM+CgkJCQkJCQkJPENvbW1lbnQgdmFsdWU9IiIvPgoJCQkJCQkJCTxGaWVsZHMgdmFsdWU9IlUwbGsiLz4KCQkJCQkJCQk8TmFtZSB2YWx1ZT0iUFJJTUFSWSIvPgoJCQkJCQkJCTxUeXBlIHZhbHVlPSJCVFJFRSIvPgoJCQkJCQkJCTxVbmlxdWUgdmFsdWU9IjEiLz4KCQkJCQkJCTwvUHJvcGVydGllcz4KCQkJCQkJCTxjb250cm9sIHZhbHVlPSIiLz4KCQkJCQkJCTxkZWxldGUgdmFsdWU9IjAiLz4KCQkJCQkJCTxuYW1lIHZhbHVlPSJQUklNQVJZIi8+CgkJCQkJCTwvbzA+CgkJCQkJCTxvMT4KCQkJCQkJCTxDaGFuZ2VzIHZhbHVlPSIiLz4KCQkJCQkJCTxQcm9wZXJ0aWVzPgoJCQkJCQkJCTxDb21tZW50IHZhbHVlPSIiLz4KCQkJCQkJCQk8RmllbGRzIHZhbHVlPSJVMGxrIi8+CgkJCQkJCQkJPE5hbWUgdmFsdWU9InVuaXF1ZV9TSWQiLz4KCQkJCQkJCQk8VHlwZSB2YWx1ZT0iQlRSRUUiLz4KCQkJCQkJCQk8VW5pcXVlIHZhbHVlPSIxIi8+CgkJCQkJCQk8L1Byb3BlcnRpZXM+CgkJCQkJCQk8Y29udHJvbCB2YWx1ZT0iIi8+CgkJCQkJCQk8ZGVsZXRlIHZhbHVlPSIwIi8+CgkJCQkJCQk8bmFtZSB2YWx1ZT0idW5pcXVlX1NJZCIvPgoJCQkJCQk8L28xPgoJCQkJCTwvaW5kZXg+CgkJCQkJPG5hbWUgdmFsdWU9IlNOYW1lcyIvPgoJCQkJCTx1bmlxdWU+CgkJCQkJCTxvMD4KCQkJCQkJCTxDaGFuZ2VzIHZhbHVlPSIiLz4KCQkJCQkJCTxQcm9wZXJ0aWVzPgoJCQkJCQkJCTxGaWVsZHMgdmFsdWU9IlUwbGsiLz4KCQkJCQkJCQk8TmFtZSB2YWx1ZT0iUFJJTUFSWSIvPgoJCQkJCQkJPC9Qcm9wZXJ0aWVzPgoJCQkJCQkJPGNvbnRyb2wgdmFsdWU9IiIvPgoJCQkJCQkJPGRlbGV0ZSB2YWx1ZT0iMCIvPgoJCQkJCQkJPG5hbWUgdmFsdWU9IlBSSU1BUlkiLz4KCQkJCQkJPC9vMD4KCQkJCQkJPG8xPgoJCQkJCQkJPENoYW5nZXMgdmFsdWU9IiIvPgoJCQkJCQkJPFByb3BlcnRpZXM+CgkJCQkJCQkJPEZpZWxkcyB2YWx1ZT0iVTBsayIvPgoJCQkJCQkJCTxOYW1lIHZhbHVlPSJ1bmlxdWVfU0lkIi8+CgkJCQkJCQk8L1Byb3BlcnRpZXM+CgkJCQkJCQk8Y29udHJvbCB2YWx1ZT0iIi8+CgkJCQkJCQk8ZGVsZXRlIHZhbHVlPSIwIi8+CgkJCQkJCQk8bmFtZSB2YWx1ZT0idW5pcXVlX1NJZCIvPgoJCQkJCQk8L28xPgoJCQkJCTwvdW5pcXVlPgoJCQkJPC9vMD4KCQkJCTxvMT4KCQkJCQk8Q2hhbmdlcyB2YWx1ZT0iIi8+CgkJCQkJPFByb3BlcnRpZXM+CgkJCQkJCTxBdXRvaW5jcmVtZW50IHZhbHVlPSIxIi8+CgkJCQkJCTxBdmVyYWdlX1Jvd19TaXplIHZhbHVlPSIwIi8+CgkJCQkJCTxDaGFyc2V0IHZhbHVlPSJ1dGY4Ii8+CgkJCQkJCTxDb2xsYXRpb24gdmFsdWU9InV0ZjhfZ2VuZXJhbF9jaSIvPgoJCQkJCQk8Q29tbWVudCB2YWx1ZT0iIi8+CgkJCQkJCTxDcmVhdGVfVGltZSB2YWx1ZT0iMjAxNS0xMC0xMyAxOTozNzoyNyIvPgoJCQkJCQk8RW5naW5lIHZhbHVlPSJJbm5vREIiLz4KCQkJCQkJPEZpZWxkX0NvdW50IHZhbHVlPSIyIi8+CgkJCQkJCTxJbmRleF9Db3VudCB2YWx1ZT0iMSIvPgoJCQkJCQk8TGlua19Db3VudCB2YWx1ZT0iMCIvPgoJCQkJCQk8TmFtZSB2YWx1ZT0iU1R5cGUiLz4KCQkJCQkJPFByaW1hcnlfS2V5IHZhbHVlPSJWSGx3WlVsayIvPgoJCQkJCQk8UmVjb3JkX0NvdW50IHZhbHVlPSIwIi8+CgkJCQkJCTxTaXplIHZhbHVlPSIxNi4wMCBLYiIvPgoJCQkJCQk8VHJpZ2dlcl9Db3VudCB2YWx1ZT0iMCIvPgoJCQkJCQk8VW5pcXVlX0NvdW50IHZhbHVlPSIxIi8+CgkJCQkJCTxVcGRhdGVfVGltZSB2YWx1ZT0iIi8+CgkJCQkJPC9Qcm9wZXJ0aWVzPgoJCQkJCTxjb250cm9sIHZhbHVlPSJUYWJsZTEiLz4KCQkJCQk8ZGVsZXRlIHZhbHVlPSIwIi8+CgkJCQkJPGZpZWxkPgoJCQkJCQk8bzA+CgkJCQkJCQk8Q2hhbmdlcyB2YWx1ZT0iIi8+CgkJCQkJCQk8UHJvcGVydGllcz4KCQkJCQkJCQk8QXV0b2luY3JlbWVudCB2YWx1ZT0iMSIvPgoJCQkJCQkJCTxDaGFyc2V0IHZhbHVlPSIiLz4KCQkJCQkJCQk8Q29sbGF0aW9uIHZhbHVlPSIiLz4KCQkJCQkJCQk8Q29tbWVudCB2YWx1ZT0iIi8+CgkJCQkJCQkJPERlZmF1bHRfVmFsdWUgdmFsdWU9IiIvPgoJCQkJCQkJCTxGaWVsZF9Qb3NpdGlvbiB2YWx1ZT0iMSIvPgoJCQkJCQkJCTxJbmRleGVkIHZhbHVlPSIxIi8+CgkJCQkJCQkJPExlbmd0aCB2YWx1ZT0iMjU1Ii8+CgkJCQkJCQkJPE5hbWUgdmFsdWU9IlR5cGVJZCIvPgoJCQkJCQkJCTxOdWxsYWJsZSB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxPbl9VcGRhdGVfU2V0X0N1cnJlbnQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8UHJlY2lzaW9uIHZhbHVlPSIxOSIvPgoJCQkJCQkJCTxTY2FsZSB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxUeXBlIHZhbHVlPSJCaWdJbnQiLz4KCQkJCQkJCQk8VW5pcXVlIHZhbHVlPSIxIi8+CgkJCQkJCQkJPFVuc2lnbmVkIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFplcm9maWxsIHZhbHVlPSIwIi8+CgkJCQkJCQk8L1Byb3BlcnRpZXM+CgkJCQkJCQk8Y29udHJvbCB2YWx1ZT0iIi8+CgkJCQkJCQk8ZGVsZXRlIHZhbHVlPSIwIi8+CgkJCQkJCQk8bmFtZSB2YWx1ZT0iVHlwZUlkIi8+CgkJCQkJCTwvbzA+CgkJCQkJCTxvMT4KCQkJCQkJCTxDaGFuZ2VzIHZhbHVlPSIiLz4KCQkJCQkJCTxQcm9wZXJ0aWVzPgoJCQkJCQkJCTxBdXRvaW5jcmVtZW50IHZhbHVlPSIwIi8+CgkJCQkJCQkJPENoYXJzZXQgdmFsdWU9InV0ZjgiLz4KCQkJCQkJCQk8Q29sbGF0aW9uIHZhbHVlPSJ1dGY4X2dlbmVyYWxfY2kiLz4KCQkJCQkJCQk8Q29tbWVudCB2YWx1ZT0iIi8+CgkJCQkJCQkJPERlZmF1bHRfVmFsdWUgdmFsdWU9IiIvPgoJCQkJCQkJCTxGaWVsZF9Qb3NpdGlvbiB2YWx1ZT0iMiIvPgoJCQkJCQkJCTxJbmRleGVkIHZhbHVlPSIwIi8+CgkJCQkJCQkJPExlbmd0aCB2YWx1ZT0iNSIvPgoJCQkJCQkJCTxOYW1lIHZhbHVlPSJUeXBlTmFtZSIvPgoJCQkJCQkJCTxOdWxsYWJsZSB2YWx1ZT0iMCIvPgoJCQkJCQkJCTxPbl9VcGRhdGVfU2V0X0N1cnJlbnQgdmFsdWU9IjAiLz4KCQkJCQkJCQk8UHJlY2lzaW9uIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFNjYWxlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFR5cGUgdmFsdWU9IlZhckNoYXIiLz4KCQkJCQkJCQk8VW5pcXVlIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFVuc2lnbmVkIHZhbHVlPSIwIi8+CgkJCQkJCQkJPFplcm9maWxsIHZhbHVlPSIwIi8+CgkJCQkJCQk8L1Byb3BlcnRpZXM+CgkJCQkJCQk8Y29udHJvbCB2YWx1ZT0iIi8+CgkJCQkJCQk8ZGVsZXRlIHZhbHVlPSIwIi8+CgkJCQkJCQk8bmFtZSB2YWx1ZT0iVHlwZU5hbWUiLz4KCQkJCQkJPC9vMT4KCQkJCQk8L2ZpZWxkPgoJCQkJCTxpbmRleD4KCQkJCQkJPG8wPgoJCQkJCQkJPENoYW5nZXMgdmFsdWU9IiIvPgoJCQkJCQkJPFByb3BlcnRpZXM+CgkJCQkJCQkJPENvbW1lbnQgdmFsdWU9IiIvPgoJCQkJCQkJCTxGaWVsZHMgdmFsdWU9IlZIbHdaVWxrIi8+CgkJCQkJCQkJPE5hbWUgdmFsdWU9IlBSSU1BUlkiLz4KCQkJCQkJCQk8VHlwZSB2YWx1ZT0iQlRSRUUiLz4KCQkJCQkJCQk8VW5pcXVlIHZhbHVlPSIxIi8+CgkJCQkJCQk8L1Byb3BlcnRpZXM+CgkJCQkJCQk8Y29udHJvbCB2YWx1ZT0iIi8+CgkJCQkJCQk8ZGVsZXRlIHZhbHVlPSIwIi8+CgkJCQkJCQk8bmFtZSB2YWx1ZT0iUFJJTUFSWSIvPgoJCQkJCQk8L28wPgoJCQkJCTwvaW5kZXg+CgkJCQkJPG5hbWUgdmFsdWU9IlNUeXBlIi8+CgkJCQkJPHVuaXF1ZT4KCQkJCQkJPG8wPgoJCQkJCQkJPENoYW5nZXMgdmFsdWU9IiIvPgoJCQkJCQkJPFByb3BlcnRpZXM+CgkJCQkJCQkJPEZpZWxkcyB2YWx1ZT0iVkhsd1pVbGsiLz4KCQkJCQkJCQk8TmFtZSB2YWx1ZT0iUFJJTUFSWSIvPgoJCQkJCQkJPC9Qcm9wZXJ0aWVzPgoJCQkJCQkJPGNvbnRyb2wgdmFsdWU9IiIvPgoJCQkJCQkJPGRlbGV0ZSB2YWx1ZT0iMCIvPgoJCQkJCQkJPG5hbWUgdmFsdWU9IlBSSU1BUlkiLz4KCQkJCQkJPC9vMD4KCQkJCQk8L3VuaXF1ZT4KCQkJCTwvbzE+CgkJCTwvdGFibGU+CgkJPC9zbGRiPgoJPC9Nb2RlbD4KPC9wcm9wZXJ0aWVzPgoK', NULL, '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', 'root*2', '2015-10-13 20:01:21', '2' );
COMMIT;
/*!40000 ALTER TABLE `vs_database_diagrams` ENABLE KEYS */

-- ---------------------------------------------------------



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------

