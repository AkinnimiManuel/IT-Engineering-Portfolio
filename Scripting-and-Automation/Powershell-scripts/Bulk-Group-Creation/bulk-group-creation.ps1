# Ensure Active Directory module is available
Import-Module ActiveDirectory

# Set the base OU path
$OUPath = "OU=DEPARTMENT,OU=LAGOS,DC=manueltech,DC=com"

# Import groups from CSV
$groups = Import-Csv -Path "C:\Users\Administrator\Documents\New-groups\groups.csv"

foreach ($group in $groups) {
    $groupName = $group.GroupName
    $description = $group.Description

    # Check if group already exists
    if (-not (Get-ADGroup -Filter { Name -eq $groupName } -SearchBase $OUPath -ErrorAction SilentlyContinue)) {
        # Create group
        New-ADGroup -Name $groupName `
                    -GroupScope Global `
                    -GroupCategory Security `
                    -Path $OUPath `
                    -Description $description

        Write-Output "Group '$groupName' created successfully."
    } else {
        Write-Output "Group '$groupName' already exists. Skipping..."
    }
}
