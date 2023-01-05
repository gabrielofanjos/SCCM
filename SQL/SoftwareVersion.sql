/*WQL query Software versions on SCCM database*/

select ProductName0, ProductVersion0, UninstallString0, count (*) as 'Total' from V_GS_INSTALLED_SOFTWARE
where ProductName0 like 'Software Nme%'
group by ProductName0, ProductVersion0, UnistallString0
 
