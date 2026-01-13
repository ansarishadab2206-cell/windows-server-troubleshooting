# Incident: Domain Login Failure

## Summary
Multiple users unable to login to domain.

## Impact
Users unable to access applications.

## Investigation
- Checked DNS resolution
- Verified DC availability
- Reviewed Event Viewer logs

## Root Cause
Client machines pointing to wrong DNS server.

## Resolution
Corrected DNS settings and flushed DNS cache.

## Lessons Learned
DNS is critical for Active Directory functionality.

