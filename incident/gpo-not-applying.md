# Incident: Group Policy Not Applying to Users

## Summary
Users reported that group policies were not applied after login.

## Impact
Security and configuration policies not enforced.

## Investigation
- Ran gpresult and gpupdate
- Checked SYSVOL and replication
- Reviewed Event Viewer logs

## Root Cause
SYSVOL replication delay between domain controllers.

## Resolution
Resolved replication issue and forced policy update.

## Lessons Learned
Healthy SYSVOL replication is critical for GPO functionality.

