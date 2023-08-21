$emails = Get-Content C:\path\txt.txt
$names = Get-Content C:\path\txt.txt

function Get-Emails{
ForEach ($users in $emails) {
Get-ADUser -Filter "mail -eq '$users'" -SearchBase "OU=OrganizationalUnit,DC=example,DC=example" -Properties "mail"
    }
}

function Get-By-Name{
ForEach ($users_names in $names) {
Get-ADUser -Filter "Name -eq '$users_names'" -SearchBase "OU=OrganizationalUnit,DC=example,DC=example"
    }
}

Write-Host "type 1 to search by email or type 2 to search by name: " -NoNewline
$anwser = Read-Host

If($anwser -eq 1){
Get-Emails
}
ElseIf($anwser -eq 2){
Get-By-Name
}
Else{
Write-Host "no action selected"
}