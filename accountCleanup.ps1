# iterates through csv of accounts to disable
# csv needs only one header, in this case the header is: samaccountname
# Target OU needs to be modified to match your AD structure, sections to replace are in <>
foreach ($user in (import-csv ".\users.csv")) {
    $samacct = $user.samaccountname
    
    foreach ($samacct in $samacct) {
       Get-Aduser $samacct | Move-ADObject -TargetPath 'OU=<target OU>,DC=<your DC>,DC=<your DC>'
       disable-adaccount -Identity $samacct
    }
}