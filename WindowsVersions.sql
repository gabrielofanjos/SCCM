/*Computers that run Windows 7*/

SELECT *
    FROM SMS_R_System
    WHERE 
        OperatingSystemNameAndVersion LIKE '%Workstation 6.1'



select SMS_R_SYSTEM.ResourceID, SMS_R_SYSTEM.ResourceType, SMS_R_SYSTEM.Name, SMS_R_SYSTEM.SMSUniqueIdentifier,
SMS_R_SYSTEM.ResourceDomainORWorkgroup, SMS_R_SYSTEM.Client from SMS_R_System
where SMS_R_System.OperatingSystemNameandVersion like "Microsoft Windows NT Workstation 5.1%"
