Import-Module ActiveDirectory

$UserList = Import-Csv -Path "C:\Scripts\users.csv"

foreach ($User in $UserList) {
    $FullName = "$($User.FirstName) $($User.LastName)"
    $UserPrincipalName = "$($User.Username)@yourdomain.com"
    
    New-ADUser `
        -Name $FullName `
        -GivenName $User.FirstName `
        -Surname $User.LastName `
        -SamAccountName $User.Username `
        -UserPrincipalName $UserPrincipalName `
        -AccountPassword (ConvertTo-SecureString $User.Password -AsPlainText -Force) `
        -Path $User.OU `
        -Enabled $true `
        -ChangePasswordAtLogon $true

    Write-Host "✅ Created: $FullName"
}
