# CloudApp Infrastructure Setup Guide

## Phase -1: Environment Setup

This guide tracks our infrastructure provisioning tasks.

### Azure Subscription Setup
- Status: Not started
- Assigned to: Programmer A

### Dataverse Environment Setup
- Status: ✅ In Progress (Programmer B)
- Assigned to: Programmer B

#### Test Environment Completed:
- Environment name: CloudApp-Test
- Type: Sandbox
- Region: United States
- Security group: DevTeam-Test
- Database capacity: 10 GB
- File storage: 20 GB
- ✅ Auditing enabled (regulatory compliance)
- ✅ Row-level security (RLS) enabled
- ✅ Transparent data encryption (TDE) verified
- Backup frequency: Daily
- Retention: 28 days

#### Production Environment Completed:
- Environment name: CloudApp-Prod
- Type: Production
- Region: United States
- Security group: Admins-Prod
- Database capacity: 20 GB
- File storage: 40 GB
- ✅ Auditing enabled
- ✅ Row-level security (RLS) enabled
- ✅ Transparent data encryption (TDE) enabled
- Backup frequency: Twice daily
- Retention: 90 days (hot) + 7 years (cold)

### Entra ID Configuration
- Status: ✅ In Progress (Programmer B)
- Assigned to: Programmer B

#### App Registrations Created:
1. CloudApp-App-Test
   - Platform: Single-page application (SPA)
   - Account types: Single tenant (techcorp.com)
   - Token lifetime: 1 hour
   
2. CloudApp-App-Prod
   - Platform: Single-page application (SPA)
   - Account types: Single tenant (techcorp.com)
   - Token lifetime: 1 hour

#### API Permissions Configured:
- Microsoft Graph: User.Read (delegated)
- Dynamics CRM: user_impersonation (delegated)
- ✅ Admin consent granted

#### Security Groups:
- CloudApp-InternalStaff
  - Members: All TechCorp employees
  - Assigned to both Test and Prod apps

### Azure Storage Account Setup
- Status: Not started
- Assigned to: Programmer A