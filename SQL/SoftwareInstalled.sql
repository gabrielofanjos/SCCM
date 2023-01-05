/*Software are installed on environment*/ 
select *  from  SMS_R_System inner join SMS_G_System_INSTALLED_SOFTWARE on SMS_G_System_INSTALLED_SOFTWARE.ResourceId = SMS_R_System.ResourceId 
where SMS_G_System_INSTALLED_SOFTWARE.ARPDisplayName = "Software Name"
