use minerva
go

if object_id('Sandbox.CancerPalliativeCareDiagnosis') is not null drop view Sandbox.CancerPalliativeCareDiagnosis;
go

-- ===================================================================================================
-- Author:			Geoff Libby
-- Create Date:	27/07/2017
-- Description:	Somerset Cancer Register BIvwPalCareDiagnosis View
-- Comment:	Fields incl. in design currently used by M.English for reporting purposes
--          at Create Date
--====================================================================================================		



set ansi_nulls on
go

set quoted_identifier on
go



create View Sandbox.CancerPalliativeCareDiagnosis
as

select

	 [Date of Diagnosis] as [Diagnosis Date]
	,[Main Diagnosis Cancer Site]
	,[Main Diagnosis Primary] as [Main Diagnosis Primary ICD10]
	,[Main Diagnosis Secondary] as [Main Diagnosis Secondary ICD10]


from

[SYS39].CancerRegister.dbo.BIvwPalCareDiagnosis






