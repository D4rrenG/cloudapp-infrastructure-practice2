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

### Monitoring & Observability
- Status: ✅ In Progress (Programmer A)
- Assigned to: Programmer A

#### Application Insights Configuration:

**Test Environment:**
- Resource name: appi-cloudapp-test
- Resource group: RG-CloudApp-Test
- Log Analytics workspace: law-cloudapp-test
- Smart detection: Enabled
- Retention: 30 days

**Production Environment:**
- Resource name: appi-cloudapp-prod
- Resource group: RG-CloudApp-Prod
- Log Analytics workspace: law-cloudapp-prod
- Smart detection: Enabled
- Retention: 90 days (hot) + 7 years (cold)

#### Custom Metrics Tracked:
- Page load times (< 2 seconds target)
- API response times (< 500ms target)
- Authentication failures (alert threshold: 10 in 5 min)
- PII access patterns (audit all access)
- Error rates (alert threshold: 5%)

#### Alert Rules Configured:
1. Failed authentication > 10 in 5 minutes → Email DevOps
2. Response time > 3 seconds → Slack #alerts
3. Error rate > 5% → Page on-call engineer
4. Abnormal data access patterns → Email security team