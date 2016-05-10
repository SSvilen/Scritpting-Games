$group = Read-Host 'Group Name'
(([adsisearcher]"memberOf:1.2.840.113556.1.4.1941:=$(([adsisearcher]"name=$group").Findone().Path.Substring(7))").findall() `
 | ? {$_.Properties.objectclass -contains "user"}).Properties.cn