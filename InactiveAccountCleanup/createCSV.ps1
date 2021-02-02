#Gets users that haven't signed into their account in more than 90 days, then exports it to a csv file
import-module activedirectory
$Date = (Get-Date).AddDays(-90)
 
Get-ADUser -Filter {((Enabled -eq $true) -and (LastLogonDate -lt $date))} -Properties LastLogonDate | select samaccountname, LastLogonDate | Sort-Object LastLogonDate | Select-Object -Property samaccountname,lastlogondate |
  Export-Csv -Path .\users.csv -NoTypeInformation

