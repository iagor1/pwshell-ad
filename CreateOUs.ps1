$ou = Get-Content C:\\path\file.txt
ForEach($namesOU in $ou){
New-ADOrganizationalUnit -Name "$namesOU" -Path "OU=example,DC=example,DC=localhost" -Description "" -ProtectedFromAccidentalDeletion $false
}
