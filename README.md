# pwshell-ad
This powershell script is able to get information about users by email or name in Active Directory (AD) <br>
the reason i create this script is to improve the way we were searching for this users<br>
this way we only need to update the txt file with your data.
## How to run :
1 - change the path of the txt file to your scenario
2 - change the OU name to your scenario
3 - Your txt file need to be like this : 
fakeuser1@email.com<br>
fakeuser2@email.com<br>
One line per email

obs : *you may need to run the script as admin*

## Others
Im not spend to many words explaining this code because you can find this commands in the Microsoft AD documentation [AD Docs](https://learn.microsoft.com/en-us/powershell/module/activedirectory/?view=windowsserver2022-ps)<br>
But a real quick explanation, im saving the data in 2 variables($emails and $names)<br> 
a for loop to every line in the txt execute command GetADUser<br> 
this loops are inside functions, they are called after we read the input from keyboard to choose any option<br>
if any option is typed (1 or 2), the program will print "no action selected"
- I will probaly create anothers pw scripts about AD, fell free to make PR and suggestions etc.
