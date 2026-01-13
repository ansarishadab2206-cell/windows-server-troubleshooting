# Incident: DNS Service Not Running on Domain Controller

## Summary
DNS service stopped on primary domain controller.

## Impact
Users unable to login to domain and access resources.

## Investigation
- Checked DNS service status
- Reviewed system and DNS logs
- Verified dependent services

## Root Cause
DNS service stopped unexpectedly after server reboot.

## Resolution
Restarted DNS service and verified name resolution.

## Prevention
Enable service monitoring for critical services.

