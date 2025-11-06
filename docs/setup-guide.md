# CloudApp Infrastructure Setup Guide

## Phase -1: Environment Setup

This guide tracks our infrastructure provisioning tasks.

### Azure Subscription Setup
- Status: ✅ In Progress (Programmer A)
- Assigned to: Programmer A

#### Tasks Completed:
1. ✅ Verified Azure subscription active
2. ✅ Created resource group: RG-CloudApp-Test
3. ✅ Created resource group: RG-CloudApp-Prod
4. ✅ Configured cost alerts ($100/month test, $500/month prod)

#### Tagging Strategy:
- Environment: Test | Production
- CostCenter: Engineering
- Owner: DevOps Team
- SecurityClass: PII-Protected

### Azure Storage Account Setup
- Status: ✅ In Progress (Programmer A)
- Assigned to: Programmer A

#### Test Environment:
- Account name: stcloudapptest
- Performance: Standard
- Redundancy: LRS
- Container created: user-account-documents
- Folder structure: {OrgID}/{UserID}/{DocumentID}.{ext}

#### Production Environment:
- Account name: stcloudappprod
- Performance: Standard
- Redundancy: GRS
- Container created: user-account-documents
- Backup: 7-year retention enabled

### Dataverse Environment Setup
- Status: Not started
- Assigned to: Programmer B

### Entra ID Configuration
- Status: Not started
- Assigned to: Programmer B