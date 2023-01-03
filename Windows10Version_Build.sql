*/Windows 10 version and OS Build WQL!/* 

select v_R_System.Name0 as 'Hostname',
v_R_System.User_Name0 as 'Username',
v_R_System.Operating_System_Name_and0 as 'Operating System',
v_GS_OPERATING_SYSTEM.BuildNumber0 as 'Windows 10 Build Number',
case
when v_GS_OPERATING_SYSTEM.BuildNumber0 = '19045' then 'Windows 10 22H2'
when v_GS_OPERATING_SYSTEM.BuildNumber0 = '19044' then 'Windows 10 21H2'
when v_GS_OPERATING_SYSTEM.BuildNumber0 = '19043' then 'Windows 10 21H1'
when v_GS_OPERATING_SYSTEM.BuildNumber0 = '19042' then 'Windows 10 20H2'
when v_GS_OPERATING_SYSTEM.BuildNumber0 = '19041' then 'Windows 10 2004'
when v_GS_OPERATING_SYSTEM.BuildNumber0 = '18363' then 'Windows 10 1909'
when v_GS_OPERATING_SYSTEM.BuildNumber0 = '18362' then 'Windows 10 1903'
when v_GS_OPERATING_SYSTEM.BuildNumber0 = '17763' then 'Windows 10 1809'
when v_GS_OPERATING_SYSTEM.BuildNumber0 = '17134' then 'Windows 10 1803'
when v_GS_OPERATING_SYSTEM.BuildNumber0 = '16299' then 'Windows 10 1709'
when v_GS_OPERATING_SYSTEM.BuildNumber0 = '15063' then 'Windows 10 1703'
when v_GS_OPERATING_SYSTEM.BuildNumber0 = '14393' then 'Windows 10 1607'
when v_GS_OPERATING_SYSTEM.BuildNumber0 = '10586' then 'Windows 10 1511'
when v_GS_OPERATING_SYSTEM.BuildNumber0 = '10240' then 'Windows 10 1507'
End as 'Windows 10 Version'
from v_r_system
inner join v_gs_operating_system
on v_R_System.ResourceID=v_GS_OPERATING_SYSTEM.ResourceID
where v_R_System.Operating_System_Name_and0 like '%Microsoft Windows NT Workstation 10.0%'
order by v_R_System.Name0
