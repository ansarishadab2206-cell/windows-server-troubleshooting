# KB: Active Directory User Account Locked

## Issue
User account gets locked frequently in Active Directory.

## Symptoms
- User receives account locked message
- Multiple failed login attempts

## Possible Causes
- Cached credentials on another device
- Mobile device or VPN using old password
- Scheduled tasks or services using old credentials

## Troubleshooting Steps
1. Check account lockout status in AD
2. Review Security Event ID 4740 on Domain Controller
3. Identify source computer
4. Reset password and unlock account

## Resolution
Updated credentials on all devices and unlocked account.

## Prevention
Educate users and monitor lockout events.

