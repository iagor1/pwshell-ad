$obj = Get-Content C:\path\txt.txt

function Disable-Obj-ProtectedFromAccidentalDeletion{
ForEach ($objects in $obj) {
Set-ADOrganizationalUnit -Identity "OU=$objects,OU=OrganizationalUnit,DC=example,DC=local" -ProtectedFromAccidentalDeletion $false
    }
}

function Enable-Obj-ProtectedFromAccidentalDeletion{
ForEach ($objects_enable in $obj) {
Set-ADOrganizationalUnit -Identity "OU=$objects_enable,OU=OrganizationalUnit,OU=PJRO,DC=example,DC=local" -ProtectedFromAccidentalDeletion $true
    }
}
Write-Host "this script will set true or false the ProtectedFromAccidentalDeletion for Organizational Units located inside the txt file"
Write-Host "type 1 to disable ProtectedFromAccidentalDeletion or type 2 to enable ProtectedFromAccidentalDeletion: " -NoNewline
$anwser = Read-Host

If($anwser -eq 1){
Disable-Obj-ProtectedFromAccidentalDeletion
}
ElseIf($anwser -eq 2){
Enable-Obj-ProtectedFromAccidentalDeletion
}
Else{
Write-Host "no action selected"
}