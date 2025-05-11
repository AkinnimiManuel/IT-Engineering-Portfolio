# Import the Active Directory module
Import-Module ActiveDirectory

# Path to the CSV file
$csvPath = "C:\Users\Administrator\Documents\New-users\manueltech_users.csv"

# Import the CSV data
$users = Import-Csv -Path $csvPath

foreach ($user in $users) {
    $securePassword = ConvertTo-SecureString $user.Password -AsPlainText -Force

    try {
        New-ADUser `
            -Name "$($user.FirstName) $($user.LastName)" `
            -GivenName $user.FirstName `
            -Surname $user.LastName `
            -SamAccountName $user.Username `
            -UserPrincipalName $user.EmailAddress `
            -AccountPassword $securePassword `
            -Enabled $true `
            -Path $user.OrganizationUnit `
            -Description $user.Description `
            -Title $user.JobTitle `
            -OfficePhone $user.OfficePhone `
            -EmailAddress $user.EmailAddress `
            -ChangePasswordAtLogon 1 

        Write-Host "Created user: $($user.Username)" -ForegroundColor Green
    } catch {
        Write-Host "Failed to create user: $($user.Username). Error: $_" -ForegroundColor Red
    }
}
