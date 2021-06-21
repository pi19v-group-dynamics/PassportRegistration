/*
 Navicat Premium Data Transfer

 Source Server         : PSQL
 Source Server Type    : PostgreSQL
 Source Server Version : 130002
 Source Host           : localhost:5432
 Source Catalog        : PassportOffice
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 130002
 File Encoding         : 65001

 Date: 21/06/2021 23:13:39
*/


-- ----------------------------
-- Table structure for Commisariats
-- ----------------------------
DROP TABLE IF EXISTS "public"."Commisariats";
CREATE TABLE "public"."Commisariats" (
  "commisariat_id" int4 NOT NULL,
  "commisariat_title" varchar(255) COLLATE "pg_catalog"."default",
  "commisariat_address" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Commisariats
-- ----------------------------

-- ----------------------------
-- Table structure for Departments
-- ----------------------------
DROP TABLE IF EXISTS "public"."Departments";
CREATE TABLE "public"."Departments" (
  "department_id" int4 NOT NULL,
  "department_title" varchar(255) COLLATE "pg_catalog"."default",
  "department_address" varchar(1023) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Departments
-- ----------------------------

-- ----------------------------
-- Table structure for Marital
-- ----------------------------
DROP TABLE IF EXISTS "public"."Marital";
CREATE TABLE "public"."Marital" (
  "marital_id" int4 NOT NULL,
  "marital_type" int4,
  "marital_firstspose" int4,
  "marital_secondspouse" int4,
  "marital_date" date,
  "marital_office" int4
)
;

-- ----------------------------
-- Records of Marital
-- ----------------------------

-- ----------------------------
-- Table structure for MaritalOffices
-- ----------------------------
DROP TABLE IF EXISTS "public"."MaritalOffices";
CREATE TABLE "public"."MaritalOffices" (
  "maritaloffice_id" int4 NOT NULL,
  "maritaloffice_title" varchar(255) COLLATE "pg_catalog"."default",
  "maritaloffice_address" varchar(1023) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of MaritalOffices
-- ----------------------------

-- ----------------------------
-- Table structure for MaritalTypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."MaritalTypes";
CREATE TABLE "public"."MaritalTypes" (
  "maritaltype_id" int4 NOT NULL,
  "maritaltype_title" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of MaritalTypes
-- ----------------------------

-- ----------------------------
-- Table structure for MilitaryCategories
-- ----------------------------
DROP TABLE IF EXISTS "public"."MilitaryCategories";
CREATE TABLE "public"."MilitaryCategories" (
  "militarycategory_id" int4 NOT NULL,
  "militarycategory_title" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of MilitaryCategories
-- ----------------------------

-- ----------------------------
-- Table structure for MilitaryDuty
-- ----------------------------
DROP TABLE IF EXISTS "public"."MilitaryDuty";
CREATE TABLE "public"."MilitaryDuty" (
  "militaryduty_id" int4 NOT NULL,
  "militaryduty_citizen" int4,
  "militaryduty_date" date,
  "militaryduty_category" int4,
  "militaryduty_commisariat" int4
)
;

-- ----------------------------
-- Records of MilitaryDuty
-- ----------------------------

-- ----------------------------
-- Table structure for Passports
-- ----------------------------
DROP TABLE IF EXISTS "public"."Passports";
CREATE TABLE "public"."Passports" (
  "passport_id" int4 NOT NULL,
  "passport_series" varchar(255) COLLATE "pg_catalog"."default",
  "passport_number" varchar(255) COLLATE "pg_catalog"."default",
  "passport_person" int4,
  "passport_valid" bool,
  "passport_department" int4,
  "passport_date" date
)
;

-- ----------------------------
-- Records of Passports
-- ----------------------------

-- ----------------------------
-- Table structure for Persons
-- ----------------------------
DROP TABLE IF EXISTS "public"."Persons";
CREATE TABLE "public"."Persons" (
  "person_id" int4 NOT NULL,
  "person_name" varchar(255) COLLATE "pg_catalog"."default",
  "person_surname" varchar(255) COLLATE "pg_catalog"."default",
  "person_patronym" varchar(255) COLLATE "pg_catalog"."default",
  "person_birth" date,
  "person_sex" int4
)
;

-- ----------------------------
-- Records of Persons
-- ----------------------------

-- ----------------------------
-- Table structure for Sexes
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sexes";
CREATE TABLE "public"."Sexes" (
  "sex_id" int4 NOT NULL,
  "sex_title" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Sexes
-- ----------------------------

-- ----------------------------
-- Table structure for TaxNumbers
-- ----------------------------
DROP TABLE IF EXISTS "public"."TaxNumbers";
CREATE TABLE "public"."TaxNumbers" (
  "taxnumber_id" int4 NOT NULL,
  "taxnumber_number" int4,
  "taxnumber_person" int4,
  "taxnumber_date" date,
  "taxnumber_taxoffice" int4
)
;

-- ----------------------------
-- Records of TaxNumbers
-- ----------------------------

-- ----------------------------
-- Table structure for TaxOffices
-- ----------------------------
DROP TABLE IF EXISTS "public"."TaxOffices";
CREATE TABLE "public"."TaxOffices" (
  "taxoffice_id" int4 NOT NULL,
  "taxoffice_title" varchar(255) COLLATE "pg_catalog"."default",
  "taxoffice_address" varchar(1023) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of TaxOffices
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Commisariats
-- ----------------------------
ALTER TABLE "public"."Commisariats" ADD CONSTRAINT "Commisariats_pkey" PRIMARY KEY ("commisariat_id");

-- ----------------------------
-- Primary Key structure for table Departments
-- ----------------------------
ALTER TABLE "public"."Departments" ADD CONSTRAINT "Departments_pkey" PRIMARY KEY ("department_id");

-- ----------------------------
-- Primary Key structure for table Marital
-- ----------------------------
ALTER TABLE "public"."Marital" ADD CONSTRAINT "Marital_pkey" PRIMARY KEY ("marital_id");

-- ----------------------------
-- Primary Key structure for table MaritalOffices
-- ----------------------------
ALTER TABLE "public"."MaritalOffices" ADD CONSTRAINT "MaritalOffices_pkey" PRIMARY KEY ("maritaloffice_id");

-- ----------------------------
-- Primary Key structure for table MaritalTypes
-- ----------------------------
ALTER TABLE "public"."MaritalTypes" ADD CONSTRAINT "MaritalTypes_pkey" PRIMARY KEY ("maritaltype_id");

-- ----------------------------
-- Primary Key structure for table MilitaryCategories
-- ----------------------------
ALTER TABLE "public"."MilitaryCategories" ADD CONSTRAINT "MilitaryCategories_pkey" PRIMARY KEY ("militarycategory_id");

-- ----------------------------
-- Primary Key structure for table MilitaryDuty
-- ----------------------------
ALTER TABLE "public"."MilitaryDuty" ADD CONSTRAINT "MilitaryDuty_pkey" PRIMARY KEY ("militaryduty_id");

-- ----------------------------
-- Primary Key structure for table Passports
-- ----------------------------
ALTER TABLE "public"."Passports" ADD CONSTRAINT "Passports_pkey" PRIMARY KEY ("passport_id");

-- ----------------------------
-- Primary Key structure for table Persons
-- ----------------------------
ALTER TABLE "public"."Persons" ADD CONSTRAINT "Persons_pkey" PRIMARY KEY ("person_id");

-- ----------------------------
-- Primary Key structure for table Sexes
-- ----------------------------
ALTER TABLE "public"."Sexes" ADD CONSTRAINT "Sexes_pkey" PRIMARY KEY ("sex_id");

-- ----------------------------
-- Primary Key structure for table TaxNumbers
-- ----------------------------
ALTER TABLE "public"."TaxNumbers" ADD CONSTRAINT "TaxNumbers_pkey" PRIMARY KEY ("taxnumber_id");

-- ----------------------------
-- Primary Key structure for table TaxOffices
-- ----------------------------
ALTER TABLE "public"."TaxOffices" ADD CONSTRAINT "TaxOffices_pkey" PRIMARY KEY ("taxoffice_id");

-- ----------------------------
-- Foreign Keys structure for table Marital
-- ----------------------------
ALTER TABLE "public"."Marital" ADD CONSTRAINT "firstspose_of_marital" FOREIGN KEY ("marital_firstspose") REFERENCES "public"."Passports" ("passport_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Marital" ADD CONSTRAINT "office_of_marital" FOREIGN KEY ("marital_office") REFERENCES "public"."MaritalOffices" ("maritaloffice_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Marital" ADD CONSTRAINT "secondspose_of_marital" FOREIGN KEY ("marital_secondspouse") REFERENCES "public"."Passports" ("passport_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Marital" ADD CONSTRAINT "type_of_marital" FOREIGN KEY ("marital_type") REFERENCES "public"."MaritalTypes" ("maritaltype_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table MilitaryDuty
-- ----------------------------
ALTER TABLE "public"."MilitaryDuty" ADD CONSTRAINT "category_of_militaryduty" FOREIGN KEY ("militaryduty_category") REFERENCES "public"."MilitaryCategories" ("militarycategory_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."MilitaryDuty" ADD CONSTRAINT "citizen_of_militaryduty" FOREIGN KEY ("militaryduty_citizen") REFERENCES "public"."Passports" ("passport_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."MilitaryDuty" ADD CONSTRAINT "commisariat_of_militaryduty" FOREIGN KEY ("militaryduty_commisariat") REFERENCES "public"."Commisariats" ("commisariat_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table Passports
-- ----------------------------
ALTER TABLE "public"."Passports" ADD CONSTRAINT "department_of_passport" FOREIGN KEY ("passport_department") REFERENCES "public"."Departments" ("department_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."Passports" ADD CONSTRAINT "person_of_passport" FOREIGN KEY ("passport_person") REFERENCES "public"."Persons" ("person_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table Persons
-- ----------------------------
ALTER TABLE "public"."Persons" ADD CONSTRAINT "sex_of_person" FOREIGN KEY ("person_sex") REFERENCES "public"."Sexes" ("sex_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table TaxNumbers
-- ----------------------------
ALTER TABLE "public"."TaxNumbers" ADD CONSTRAINT "person_of_taxnumber" FOREIGN KEY ("taxnumber_person") REFERENCES "public"."Persons" ("person_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."TaxNumbers" ADD CONSTRAINT "taxoffice_of_taxnumber" FOREIGN KEY ("taxnumber_taxoffice") REFERENCES "public"."TaxOffices" ("taxoffice_id") ON DELETE CASCADE ON UPDATE CASCADE;
