<h1>Active Directory Inactive Account Cleanup</h1>
<p>This script is designed to find accounts that have not been logged into in the last 90 days, and create a CSV file of said accounts. Once the CSV file is created, the second script iterates through the CSV, disables the accounts, and moves them to the OU that you set.</p>
<p>It is highly reccommended to look through the CSV before running the second script to make sure they are all accounts that you want to disable</p>
