# 📋 User Management Project

## 👋 Introduction

Hi, I'm Emmanuel Stefan, and this project is part of my IT Support and System Administration portfolio.  
In this project, I demonstrate my ability to create and manage **user accounts**, **groups**, and **permissions** using **Windows Server Active Directory**.  
All tasks were performed in a lab environment to simulate real-world enterprise setups.

---

## 🎯 Project Goals

- ✅ Create and organize user accounts following best practices
- ✅ Set up security groups for role-based access control (RBAC)
- ✅ Manage group memberships effectively
- ✅ Apply and manage permissions on shared folders
- ✅ Account lockout and unlocking
- ✅ Disable and enable accounts
- ✅ Password reset management
- ✅ Moving users between OUs
- ✅ Group nesting
- ✅ User Account and expiry date

---

## 🛠️ Tools and Technologies

- Windows Server 2022
- Active Directory Domain Services (AD DS)
- Active directory users and computers (ADUC)

---

## 🚀 Step-by-Step Implementation

### 1. Active Directory Setup

- Installed **Active Directory Domain Services (AD DS)**.
- Promoted the server to a **Domain Controller**.
- click on the link to see how i did it 😎

[Active domain set-up](../Domain-Controller-Setup/Domain-Controller-Setup.md)

---

### 2. Organizational Unit (OU) Structure

Created a clean and logical OU structure:

```
- LAGOS
    - OU=Users
    - OU=Groups
    - OU=Departments

```
![OU structure](images/01-create-OUs.png)

![OUs](images/02-users-groups-department-OUs.png)

---

### 3. User Account Creation

Created user accounts using the **Active Directory Users and Computers (ADUC)** console:

- Naming Convention: `FirstInitialLastName`
- Default password set and enforced change at next logon

Example:
- `Emmanuel Akinnimi` ➔ Username: `Eakinnimi`

![Creating new users](images/03-creating-new-users.png)
![providing the names](images/04-providing-the-name.png)
![setting the password](images/05-setting-the-password.png)
![account created](images/06-account-created.png)

- Tested the account created
![testing account](images/07-testing-the-account.png)

- Requested for password to be changed before login
![password changed](images/08-password-changed.png)
![changed password](images/09-changed-password.png)

- successfully logged in
![Welcome page](images/10-welcome-page.png)


- I added four more users manually

![added more users](images/06a-adding-more-users.png)

---

### 4. Group Creation

Created security groups based on departments:

- 🖥️ `IT_Support`
- 🧾 `Finance_Team`
- 📚 `HR_Department`
- 📞 `Customer_Service`

Groups were configured as **Security Groups** with **Global** scope.

![create groups](images/11-create-groups.png)
![security check](images/12-security-check.png)
![groups created](images/13-groups-created.png)

- Created three more groups

![more groups](images/14-more-groups.png)

---

### 5. Adding Users to Groups

Assigned users to their respective department groups based on their roles:

- Example: `Emmanuel Akinnimi` ➔ Member of `IT_Support`

This approach follows the **Role-Based Access Control (RBAC)** model.

- Added Emmanuel Akinnimi to IT_support group

![adding users to groups](images/15-adding-users-to-groups.png)

- Added jacob to the finance_team

![jacob to finance](images/16-jacob-to-finance.png)

---

### 6. Setting Folder Permissions

Created shared folders and assigned NTFS permissions based on group membership:

| Folder Path                   | Group Name        | Permissions    |
|-------------------------------|-------------------|----------------|
| \\TESTDC-01\HR_department     | HR_Department     | Full Control   |
| \\TESTDC-01\Finance_Team      | Finance_Team      | Modify         |
| \\TESTDC-01\IT_support        | IT_Support        | Full Control   |
| \\TESTDC-01\Customer_Service  | Customer_Service  | Read/Write     |

![created folders](images/17-created-folders.png)
- Edited the shared permissions for IT_support folder
![shared permissions](images/18-shared-permissions.png)

- Edited the NTFS permissions (full control) for IT_support folder
![NTFS](images/19-NTFS-permissions.png)

- Did the same for HR (full control)
![HR full control](images/20-HR-full-control.png)

- Gave the Finance_team a modify permission
![finance team permission](images/21-Finance-team.png)

- Gave the Customer_service a Read & write permission
![Customer service](images/22-customer-service-permission.png)

Permissions were assigned at the group level, not individual users, to simplify management.

- Network path 
![network path](images/23-network-path.png)

I created shared folders and applied NTFS permissions based on Active Directory group membership, ensuring secure access control. Users were automatically granted correct permissions through group membership without the need for individual user permission assignment.

---

### 7. ⚡ Disable and Enable Accounts 📴📶

🔹 To disable an account (e.g., when someone left the organization):

Right-clicked the user ➡️ Disable Account.

🔹 To enable it later:

Right-clicked ➡️ Enable Account.

🔹 Script I Built: Bulk-disable inactive users based on their last logon date:

---

### 8. 🎯 Password Reset Management 🔄

🔹 Manually reset passwords in ADUC:

Right-click user ➡️ Reset Password ➡️ Enter new password ➡️ Set options (force change at next logon).

🔹 Script I Created: Reset passwords for multiple users:

---

### 9. 🚀 Moving Users Between OUs 🏢

🔹 I selected users in ADUC, then right-clicked ➡️ Move ➡️ selected the target OU.
🔹 Example: From Interns OU ➡️ to FullTimeEmployees OU after confirmation of full-time employment. 🎉
🔹 This demonstrated my understanding of how organizational structures evolve and how to keep AD clean and organized.

---

### 10. 🔗 Group Nesting (Group within a Group) 🔗

🔹 I added one group (e.g., Finance_Team) as a member of another group (e.g., All_Employees)!
🔹 In ADUC:

Opened All_Employees group ➡️ Members ➡️ Add ➡️ Selected Finance_Team.

🔹 This made managing permissions so much easier across departments! 🏢✅

---

### 11. User Account Expiry Date ⏳
🔹 I created a temporary user account in ADUC.
🔹 Under the Account tab, I checked Account expires and set a future date 📅.
🔹 After the expiration date, the account was disabled automatically—no manual intervention needed.
🔹 This feature is super useful for managing contractors, interns, and temp staff! 🚀



### 🧠 Challenges Faced

- **Challenge**: Keeping group memberships organized as the number of users grew.
  - **Solution**: Implemented a naming standard for groups and documented memberships properly.

- **Challenge**: Avoiding permission conflicts between different folders.
  - **Solution**: Followed the **least privilege principle** — users only got the minimum access necessary.

---

## ✨ What I Learned

- The importance of having a well-organized Active Directory structure
- How group-based permission management simplifies administration
- How password policies and account lockout policies help strengthen security
- How to troubleshoot common permission issues when users have access problems

---

## 🚀 Future Enhancements

- Automate bulk user creation using PowerShell scripts 📜
- Implement advanced Group Policy Objects (GPOs) for device management
- Set up Group Policy Preferences for folder redirection and mapped drives

---

## 🙌 Conclusion

This project solidified my skills in Active Directory user and group management, and highlighted the importance of maintaining a structured and secure environment.  
I'm excited to keep building on this foundation as I grow further into IT Support and System Administration roles!
