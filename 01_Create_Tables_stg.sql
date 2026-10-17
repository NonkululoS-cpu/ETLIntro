/*
SELECT TOP (1000) [student_id]
      ,[student_name]
      ,[grade]
      ,[mathematics_mark]
      ,[physical_science_mark]
      ,[life_sciences_mark]
      ,[english_home_language_mark]
      ,[life_orientation_mark]
      ,[information_technology_mark]
      ,[agricultural_science_mark]
      ,[total_mark]
      ,[average_mark]
  FROM [LuloHigh_stg].[bronze].[prelim_science_students_marks]

--create grade 10 table and insert data
SELECT TOP (1000) [student_id]
      ,[student_name]
      ,[grade]
      ,[mathematics_mark]
      ,[physical_science_mark]
      ,[life_sciences_mark]
      ,[english_home_language_mark]
      ,[life_orientation_mark]
      ,[information_technology_mark]
      ,[agricultural_science_mark]
      ,[total_mark]
      ,[average_mark]
  FROM [LuloHigh_stg].[bronze].[prelim_science_students_marks]
  where grade in ('10A','10B')

  --create grade 11 table and insert data
SELECT TOP (1000) [student_id]
      ,[student_name]
      ,[grade]
      ,[mathematics_mark]
      ,[physical_science_mark]
      ,[life_sciences_mark]
      ,[english_home_language_mark]
      ,[life_orientation_mark]
      ,[information_technology_mark]
      ,[agricultural_science_mark]
      ,[total_mark]
      ,[average_mark]
  FROM [LuloHigh_stg].[bronze].[prelim_science_students_marks]
  where grade in ('11A','11B')

  --create grade 12 table and insert data
SELECT TOP (1000) [student_id]
      ,[student_name]
      ,[grade]
      ,[mathematics_mark]
      ,[physical_science_mark]
      ,[life_sciences_mark]
      ,[english_home_language_mark]
      ,[life_orientation_mark]
      ,[information_technology_mark]
      ,[agricultural_science_mark]
      ,[total_mark]
      ,[average_mark]
  FROM [LuloHigh_stg].[bronze].[prelim_science_students_marks]
  where grade in ('12A','12B')
  */
------------------------------------------------------------------------------------------------------------------------------------
USE [LuloHigh_stg];
GO

-- ==========================================
-- 1. GRADE 10: CREATE TABLE AND LOAD DATA
-- ==========================================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[bronze].[grade_10_science_marks]') AND type in (N'U'))
BEGIN
    CREATE TABLE [bronze].[grade_10_science_marks] (
        [student_id] VARCHAR(50),
        [student_name] VARCHAR(150),
        [grade] VARCHAR(10),
        [mathematics_mark] INT,
        [physical_science_mark] INT,
        [life_sciences_mark] INT,
        [english_home_language_mark] INT,
        [life_orientation_mark] INT,
        [information_technology_mark] INT,
        [agricultural_science_mark] INT,
        [total_mark] INT,
        [average_mark] DECIMAL(5,2)
    );
END;

-- Load data for Grade 10
INSERT INTO [bronze].[grade_10_science_marks]
SELECT TOP (1000) 
       [student_id], [student_name], [grade], [mathematics_mark], [physical_science_mark], 
       [life_sciences_mark], [english_home_language_mark], [life_orientation_mark], 
       [information_technology_mark], [agricultural_science_mark], [total_mark], [average_mark]
FROM [bronze].[prelim_science_students_marks]
WHERE [grade] IN ('10A', '10B');
GO


-- ==========================================
-- 2. GRADE 11: CREATE TABLE AND LOAD DATA
-- ==========================================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[bronze].[grade_11_science_marks]') AND type in (N'U'))
BEGIN
    CREATE TABLE [bronze].[grade_11_science_marks] (
        [student_id] VARCHAR(50),
        [student_name] VARCHAR(150),
        [grade] VARCHAR(10),
        [mathematics_mark] INT,
        [physical_science_mark] INT,
        [life_sciences_mark] INT,
        [english_home_language_mark] INT,
        [life_orientation_mark] INT,
        [information_technology_mark] INT,
        [agricultural_science_mark] INT,
        [total_mark] INT,
        [average_mark] DECIMAL(5,2)
    );
END;

-- Load data for Grade 11
INSERT INTO [bronze].[grade_11_science_marks]
SELECT TOP (1000) 
       [student_id], [student_name], [grade], [mathematics_mark], [physical_science_mark], 
       [life_sciences_mark], [english_home_language_mark], [life_orientation_mark], 
       [information_technology_mark], [agricultural_science_mark], [total_mark], [average_mark]
FROM [bronze].[prelim_science_students_marks]
WHERE [grade] IN ('11A', '11B');
GO


-- ==========================================
-- 3. GRADE 12: CREATE TABLE AND LOAD DATA
-- ==========================================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[bronze].[grade_12_science_marks]') AND type in (N'U'))
BEGIN
    CREATE TABLE [bronze].[grade_12_science_marks] (
        [student_id] VARCHAR(50),
        [student_name] VARCHAR(150),
        [grade] VARCHAR(10),
        [mathematics_mark] INT,
        [physical_science_mark] INT,
        [life_sciences_mark] INT,
        [english_home_language_mark] INT,
        [life_orientation_mark] INT,
        [information_technology_mark] INT,
        [agricultural_science_mark] INT,
        [total_mark] INT,
        [average_mark] DECIMAL(5,2)
    );
END;

-- Load data for Grade 12
INSERT INTO [bronze].[grade_12_science_marks]
SELECT TOP (1000) 
       [student_id], [student_name], [grade], [mathematics_mark], [physical_science_mark], 
       [life_sciences_mark], [english_home_language_mark], [life_orientation_mark], 
       [information_technology_mark], [agricultural_science_mark], [total_mark], [average_mark]
FROM [bronze].[prelim_science_students_marks]
WHERE [grade] IN ('12A', '12B');
GO