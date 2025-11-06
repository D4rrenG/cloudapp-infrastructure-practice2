# Two-Programmer Git Workflow Tutorial: Phase -1 Infrastructure Setup

## Table of Contents
1. [Scrubbed Checklist](#scrubbed-checklist)
2. [Setup Phase: Creating Your Practice Repository](#setup-phase)
3. [Step 0: Adding This Tutorial to Your Repository](#step-0)
4. [The Two-Programmer Workflow](#two-programmer-workflow)
5. [Practical Tips and Common Pitfalls](#practical-tips)

---

## Scrubbed Checklist

Below is the proprietary-free version of your checklist. All sensitive information has been replaced with generic equivalents while maintaining the workflow structure.

---

## Setup Phase

### Tutorial Overview

This tutorial simulates a realistic two-programmer workflow where you'll play both roles. You'll learn how to:
- Create and manage feature branches
- Keep work synchronized between developers
- Review and integrate code
- Avoid blocking each other
- Deliver finished work to production

**Time Investment:** 2-3 hours for complete walkthrough

---

### Initial Repository Setup

#### Step 1: Create the GitHub Repository

**As Project Lead (You):**

1. **Go to GitHub** (github.com) and sign in
2. **Click the "+" icon** in the top-right corner → "New repository"
3. **Configure the repository:**
   - Repository name: `cloudapp-infrastructure-practice`
   - Description: "Practice repository for two-programmer Git workflow"
   - **Public** (so you can practice without worrying about private repo limits)
   - ✅ Check "Add a README file"
   - Add .gitignore: Choose "Node"
   - License: MIT License (or skip)
4. **Click "Create repository"**

#### Step 2: Set Up GitKraken

**Download and Install:**
1. Download GitKraken from gitkraken.com (free version works fine)
2. Install and open GitKraken
3. **Sign in** with your GitHub account
   - Click "Sign in with GitHub" on the welcome screen
   - Authorize GitKraken to access your GitHub account

**Clone Your Repository:**
1. In GitKraken, click **"Clone a repo"** in the welcome screen (or File → Clone)
2. Choose **"GitHub.com"** tab
3. Find your `cloudapp-infrastructure-practice` repository
4. **Choose where to save it locally** (e.g., `C:\Users\YourName\Projects\`)
5. Click **"Clone the repo!"**
6. Click **"Open Now"** when clone completes

**What You Should See:**
- GitKraken opens with your repository
- In the center, you see a single commit (probably "Initial commit")
- On the left sidebar, under "LOCAL", you see `main`
- Under "REMOTE", you see `origin/main`

#### Step 3: Create Your Project Structure

**As Project Lead:**

1. **Open your file explorer** and navigate to the cloned repository folder
2. **Create initial folder structure:**
   ```
   cloudapp-infrastructure-practice/
   ├── docs/
   │   └── (empty for now)
   ├── scripts/
   │   └── .gitkeep
   ├── azure-configs/
   │   └── .gitkeep
   └── README.md (already exists)
   ```

3. **Create .gitkeep files** (these are empty files that tell Git to track empty folders):
   - In `scripts/` folder: create a file named `.gitkeep` (empty file)
   - In `azure-configs/` folder: create a file named `.gitkeep` (empty file)

4. **Update README.md** to describe the project:
   ```markdown
   # CloudApp Admin Portal - Infrastructure Setup
   
   Practice repository for learning two-programmer Git workflows.
   
   ## Project Structure
   
   - `docs/` - Documentation and setup guides
   - `scripts/` - Automation scripts for infrastructure
   - `azure-configs/` - Azure resource configuration files
   
   ## Getting Started
   
   See docs/git-workflow-tutorial.md for the complete tutorial walkthrough.
   ```

5. **Go back to GitKraken**
6. **You should see changes appear** in the right panel under "Unstaged Files"

7. **Stage all files:**
   - Click **"Stage all changes"** button

8. **Commit your changes:**
   - In the commit message box at the bottom, type:
     ```
     Initial project structure
     
     - Created docs, scripts, and azure-configs folders
     - Updated README with project description
     ```
   - Click **"Commit changes"** button (the green button)

9. **Push to GitHub:**
   - Click the **"Push"** button in the top toolbar (looks like an up arrow)
   - GitKraken will push your commit to GitHub

**Why We Did This:**
- You now have a real project structure to work with
- This gives both "programmers" actual files to modify
- You've practiced the basic workflow: modify → stage → commit → push

---

## Step 0

### Adding This Tutorial to Your Repository

Now that you have a basic repository structure, let's add this tutorial document as your first real practice exercise.

**As Project Lead:**

1. **Save this tutorial file:**
   - Copy all the content from this artifact
   - In your repository folder, navigate to the `docs/` folder
   - Create a new file: `git-workflow-tutorial.md`
   - Paste the entire content into this file
   - Save the file

2. **Return to GitKraken**
   - You should see `docs/git-workflow-tutorial.md` appear in the "Unstaged Files" section

3. **Stage the file:**
   - Click on the file name, then click "Stage File"
   - OR click "Stage all changes" if it's the only file

4. **Commit the tutorial:**
   - In the commit message box, type:
     ```
     Add two-programmer workflow tutorial
     
     - Complete walkthrough for practicing Git collaboration
     - Includes scrubbed checklist for realistic practice
     - Step-by-step GitKraken instructions
     ```
   - Click the green **"Commit changes"** button

5. **Push to GitHub:**
   - Click the **"Push"** button in the top toolbar
   - This uploads your new tutorial file to GitHub

**Verify on GitHub:**
1. Go to your repository on GitHub in a web browser
2. Navigate to the `docs/` folder
3. Click on `git-workflow-tutorial.md`
4. You should see the complete tutorial displayed on GitHub

**Why This Matters:**
- You've just completed your first real commit cycle
- The tutorial is now version-controlled alongside your practice work
- If you make a mistake later, you can always refer back to this document in your repo
- You're building the habit of documenting your work in the repository itself

**Now you're ready to begin the actual two-programmer workflow!**

---

## The Two-Programmer Workflow

### The Scenario

You're dividing Phase -1 tasks between two developers:

- **Programmer A (You, first):** Will handle Azure resource setup (subscriptions, resource groups, storage accounts)
- **Programmer B (You, second):** Will handle Dataverse and authentication setup (Entra ID, security groups)

Both programmers will work simultaneously on different branches, then integrate their work.

---

### Round 1: Creating Feature Branches

#### As Programmer A - Setting Up Azure Resources

**Step 1: Create Your Feature Branch**

1. In GitKraken, make sure you're on the `main` branch (look at the left sidebar, `main` should be bold)
2. **Right-click on `main`** in the commit graph (the visual timeline in the center)
3. Select **"Create branch here"**
4. Name it: `feature/azure-resource-setup`
5. Click **"Create Branch"**

**What Just Happened:**
- GitKraken automatically switched you to the new branch (see the left sidebar, `feature/azure-resource-setup` is now bold)
- This branch is identical to `main` right now, but you can make changes without affecting `main`
- The visual graph shows your branch splitting off from `main`

**Step 2: Start Working on Azure Tasks**

1. **Navigate to `docs/` folder** in your file explorer
2. **Create a new file:** `setup-guide.md`
3. **Add the following content:**

```markdown
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
```

4. **Create configuration files** in `azure-configs/` folder:

**File 1:** `resource-groups.json`
```json
{
  "resourceGroups": [
    {
      "name": "RG-CloudApp-Test",
      "location": "centralus",
      "tags": {
        "Environment": "Test",
        "CostCenter": "Engineering",
        "Owner": "DevOps Team"
      }
    },
    {
      "name": "RG-CloudApp-Prod",
      "location": "centralus",
      "tags": {
        "Environment": "Production",
        "CostCenter": "Engineering",
        "Owner": "DevOps Team"
      }
    }
  ]
}
```

**File 2:** `storage-accounts.json`
```json
{
  "storageAccounts": [
    {
      "name": "stcloudapptest",
      "resourceGroup": "RG-CloudApp-Test",
      "location": "centralus",
      "sku": "Standard_LRS",
      "containers": [
        {
          "name": "user-account-documents",
          "publicAccess": "None"
        }
      ]
    },
    {
      "name": "stcloudappprod",
      "resourceGroup": "RG-CloudApp-Prod",
      "location": "centralus",
      "sku": "Standard_GRS",
      "containers": [
        {
          "name": "user-account-documents",
          "publicAccess": "None"
        }
      ]
    }
  ]
}
```

**Step 3: Commit Your Work**

1. **Return to GitKraken**
2. **You'll see 3 files in "Unstaged Files":**
   - `docs/setup-guide.md`
   - `azure-configs/resource-groups.json`
   - `azure-configs/storage-accounts.json`

3. **Stage all files:** Click "Stage all changes"

4. **Write a descriptive commit message:**
   ```
   Azure resource setup: resource groups and storage accounts
   
   - Configured test and production resource groups
   - Set up storage accounts with proper redundancy
   - Created blob containers for user documents
   - Added tagging strategy for cost allocation
   ```

5. **Commit:** Click the green "Commit changes" button

**Step 4: Push Your Branch to GitHub**

1. **Click the "Push" button** in the top toolbar
2. GitKraken will say it needs to set up a remote tracking branch
3. **Click "Submit"** (this publishes your branch to GitHub)

**What Just Happened:**
- Your `feature/azure-resource-setup` branch now exists on GitHub
- Other developers can see your branch but won't be affected by it
- Your changes are backed up to GitHub
- The visual graph in GitKraken shows your branch ahead of `main`

**Important:** Don't merge to `main` yet! Programmer B needs to do their work too.

---

#### As Programmer B - Setting Up Dataverse and Auth

Now you're switching roles. In a real scenario, Programmer B would be working at the same time as Programmer A, on a different computer. But you're simulating both.

**Step 1: Switch Back to Main and Get Latest**

1. In GitKraken, **double-click on `main`** in the left sidebar (under LOCAL)
   - This switches you back to the `main` branch
   - Notice that your Programmer A work "disappears" from your file explorer
   
2. **Click "Pull"** in the top toolbar (down arrow icon)
   - This ensures you have the latest version of `main` from GitHub
   - Even though nothing changed, this is a good habit

**Why This Matters:**
- Programmer B should always start from the latest `main` branch
- This prevents working from outdated code
- In a real team, other developers might have pushed changes to `main` while Programmer A was working

**Step 2: Create Programmer B's Feature Branch**

1. **Right-click on `main`** in the commit graph
2. Select **"Create branch here"**
3. Name it: `feature/dataverse-auth-setup`
4. Click **"Create Branch"**

**Notice:** 
- You're now on a different branch than Programmer A
- The visual graph shows two branches splitting from the same point on `main`
- This simulates two developers working in parallel

**Step 3: Do Programmer B's Work**

1. **Open `docs/setup-guide.md`** in your editor
   - **Wait, the file doesn't exist!** That's correct - you're on a different branch
   - Programmer A created this file, but only on their branch
   - You'll create your own version

2. **Create `docs/setup-guide.md`** with Programmer B's focus:

```markdown
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
```

3. **Create `azure-configs/dataverse-environments.json`:**

```json
{
  "dataverseEnvironments": [
    {
      "name": "CloudApp-Test",
      "type": "Sandbox",
      "region": "unitedstates",
      "securityGroup": "DevTeam-Test",
      "database": {
        "capacity": "10GB",
        "fileStorage": "20GB",
        "auditingEnabled": true,
        "rowLevelSecurity": true,
        "transparentDataEncryption": true
      },
      "backup": {
        "frequency": "Daily",
        "retention": "28 days"
      }
    },
    {
      "name": "CloudApp-Prod",
      "type": "Production",
      "region": "unitedstates",
      "securityGroup": "Admins-Prod",
      "database": {
        "capacity": "20GB",
        "fileStorage": "40GB",
        "auditingEnabled": true,
        "rowLevelSecurity": true,
        "transparentDataEncryption": true
      },
      "backup": {
        "frequency": "Twice daily",
        "hotRetention": "90 days",
        "coldRetention": "7 years"
      }
    }
  ]
}
```

4. **Create `azure-configs/entra-id-apps.json`:**

```json
{
  "appRegistrations": [
    {
      "name": "CloudApp-App-Test",
      "platform": "SPA",
      "accountTypes": "Single tenant",
      "tenantDomain": "techcorp.com",
      "tokenLifetime": "1 hour",
      "permissions": [
        {
          "api": "Microsoft Graph",
          "permission": "User.Read",
          "type": "Delegated"
        },
        {
          "api": "Dynamics CRM",
          "permission": "user_impersonation",
          "type": "Delegated"
        }
      ]
    },
    {
      "name": "CloudApp-App-Prod",
      "platform": "SPA",
      "accountTypes": "Single tenant",
      "tenantDomain": "techcorp.com",
      "tokenLifetime": "1 hour",
      "permissions": [
        {
          "api": "Microsoft Graph",
          "permission": "User.Read",
          "type": "Delegated"
        },
        {
          "api": "Dynamics CRM",
          "permission": "user_impersonation",
          "type": "Delegated"
        }
      ]
    }
  ],
  "securityGroups": [
    {
      "name": "CloudApp-InternalStaff",
      "description": "All TechCorp employees with access to CloudApp",
      "assignedApps": ["CloudApp-App-Test", "CloudApp-App-Prod"]
    }
  ]
}
```

**Step 4: Commit Programmer B's Work**

1. **Return to GitKraken**
2. **You'll see 3 new files in "Unstaged Files"**

3. **Stage all files:** Click "Stage all changes"

4. **Write commit message:**
   ```
   Dataverse and Entra ID configuration
   
   - Configured test and production Dataverse environments
   - Enabled security features: auditing, RLS, TDE
   - Created Entra ID app registrations for authentication
   - Set up security groups and API permissions
   ```

5. **Commit:** Click the green "Commit changes" button

**Step 5: Push Programmer B's Branch**

1. **Click "Push"** in the top toolbar
2. **Click "Submit"** to publish the branch

**What You Should See in GitKraken:**
- In the visual graph, you now have TWO branches splitting from `main`
- `feature/azure-resource-setup` (Programmer A's work)
- `feature/dataverse-auth-setup` (Programmer B's work)
- Both branches are ahead of `main`
- Neither branch affects the other

**The Realistic Scenario:**
At this point, both programmers have completed their initial work independently. They didn't block each other, and both have working code on their respective branches. Now comes the coordination part.

---

### Round 2: Staying Synchronized

This is where many teams struggle. Both programmers have created `setup-guide.md` independently, which will cause a merge conflict. Let's handle this realistically.

#### The Problem: Both Programmers Modified the Same File

**As Programmer A - Discovering the Conflict**

1. **You're still on `feature/azure-resource-setup`** (verify in the left sidebar)
2. Let's say Programmer A finishes first and wants to merge to `main`

**Step 1: Create a Pull Request (PR)**

*In a real workflow, you'd create a PR on GitHub. For this tutorial, we'll simulate a simpler "direct merge" but understand the concept:*

1. **Switch to `main` branch:** Double-click `main` in the left sidebar
2. **Pull latest:** Click "Pull" to ensure you have the latest `main`
3. **Merge Programmer A's branch:**
   - Right-click on `feature/azure-resource-setup` in the left sidebar (or in the graph)
   - Select **"Merge feature/azure-resource-setup into main"**
   - A dialog appears
   - Click **"Merge"**

**What Happened:**
- Programmer A's changes are now in `main`
- The files `setup-guide.md`, `resource-groups.json`, and `storage-accounts.json` are now part of `main`
- The visual graph shows `feature/azure-resource-setup` merged into `main`

4. **Push `main` to GitHub:**
   - Click "Push"
   - This updates the remote `main` branch with Programmer A's work

**Good practice:** Now delete the feature branch since it's merged:
- Right-click `feature/azure-resource-setup` in the sidebar
- Select "Delete feature/azure-resource-setup"
- Confirm deletion
- This keeps your branch list clean

---

#### As Programmer B - Handling the Merge Conflict

**Step 1: Fetch Latest Changes**

1. **You're currently on `feature/dataverse-auth-setup`** (verify in sidebar)
2. **Click "Fetch"** in the toolbar (looks like a cloud with down arrow)
   - This downloads info about changes from GitHub without modifying your files
   - You'll see that `main` has moved forward

**Step 2: Update Your Branch with Latest Main**

Now Programmer B needs to incorporate Programmer A's changes. There are two ways:
- **Merge `main` into your branch** (we'll use this - it's simpler for learning)
- Rebase your branch on `main` (more advanced, skip for now)

1. **Right-click on `main`** in the commit graph or sidebar
2. Select **"Merge main into feature/dataverse-auth-setup"**
3. Click **"Merge"**

**CONFLICT! GitKraken shows a warning:**
- ⚠️ "Merge conflicts detected"
- The file `docs/setup-guide.md` appears in the "Conflicted Files" section

**Why:** Both programmers created `setup-guide.md` with different content. Git doesn't know which version to keep.

**Step 3: Resolve the Merge Conflict**

1. **In GitKraken, click on `docs/setup-guide.md`** in the "Conflicted Files" section
2. **The Merge Tool opens** with three panels:
   - Left: Version from `main` (Programmer A's version)
   - Right: Version from your branch (Programmer B's version)
   - Bottom: Output (what will be saved)

3. **For this tutorial, let's combine both versions:**
   - In the Output panel at the bottom, manually edit to include BOTH programmers' work
   - Create a comprehensive guide that combines all sections

**Combined Version for Output Panel:**

```markdown
# CloudApp Infrastructure Setup Guide

## Phase -1: Environment Setup

This guide tracks our infrastructure provisioning tasks.

### Azure Subscription Setup
- Status: ✅ Completed (Programmer A)
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
- Status: ✅ Completed (Programmer A)
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
- Status: ✅ Completed (Programmer B)
- Assigned to: Programmer B

#### Test Environment:
- Environment name: CloudApp-Test
- Type: Sandbox
- Region: United States
- Security group: DevTeam-Test
- Database capacity: 10 GB
- File storage: 20 GB
- ✅ Auditing enabled
- ✅ Row-level security (RLS) enabled
- ✅ Transparent data encryption (TDE) verified
- Backup frequency: Daily
- Retention: 28 days

#### Production Environment:
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
- Status: ✅ Completed (Programmer B)
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
```

4. **Save the merge resolution:**
   - Click **"Save"** or **"Mark as resolved"**
   - The file moves from "Conflicted Files" to "Staged Files"

5. **Complete the merge:**
   - Write a commit message:
     ```
     Merge main into feature/dataverse-auth-setup
     
     - Resolved conflict in setup-guide.md
     - Combined Azure resources and Dataverse sections
     - All Phase -1 tasks now documented
     ```
   - Click **"Commit and merge"**

**What Just Happened:**
- You resolved the conflict by combining both programmers' work
- Your branch now includes ALL the work from both programmers
- The visual graph shows your branch connecting to `main` and then continuing

**Step 4: Push Updated Branch**

1. **Click "Push"**
2. Your updated branch goes to GitHub with both programmers' work integrated

---

#### As Programmer B - Merging to Main

Now Programmer B's branch is ready to merge.

1. **Switch to `main`:** Double-click `main` in the sidebar
2. **Pull latest:** Click "Pull" (good habit, even though you just updated)
3. **Merge Programmer B's branch:**
   - Right-click `feature/dataverse-auth-setup` in the sidebar
   - Select **"Merge feature/dataverse-auth-setup into main"**
   - Click **"Merge"**
   - **No conflicts!** (Because you already resolved them in your branch)

4. **Push to GitHub:** Click "Push"

5. **Delete the feature branch:**
   - Right-click `feature/dataverse-auth-setup`
   - Delete the branch
   - Keeps things tidy

**What You've Accomplished:**
- ✅ Both programmers completed their work independently
- ✅ You handled a realistic merge conflict
- ✅ All work is integrated into `main`
- ✅ The repository now contains: setup-guide.md (combined), resource-groups.json, storage-accounts.json, dataverse-environments.json, entra-id-apps.json
- ✅ You experienced realistic coordination

---

### Round 3: Adding More Features (Building on Combined Work)

Now let's simulate another realistic scenario: both programmers take on new tasks that build on the completed work.

#### As Programmer A - Adding Monitoring Configuration

**Step 1: Create New Feature Branch from Latest Main**

1. **Make sure you're on `main`:** Double-click `main` in sidebar
2. **Pull latest:** Click "Pull"
3. **Create new branch:**
   - Right-click `main` in the graph
   - "Create branch here"
   - Name: `feature/monitoring-setup`
   - Create Branch

**Step 2: Add Monitoring Documentation**

1. **Update `docs/setup-guide.md`** to add monitoring section at the end:

```markdown
[... keep all existing content ...]

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
```

2. **Create `azure-configs/monitoring.json`:**

```json
{
  "applicationInsights": [
    {
      "name": "appi-cloudapp-test",
      "resourceGroup": "RG-CloudApp-Test",
      "location": "centralus",
      "logAnalyticsWorkspace": "law-cloudapp-test",
      "retentionDays": 30,
      "smartDetection": true
    },
    {
      "name": "appi-cloudapp-prod",
      "resourceGroup": "RG-CloudApp-Prod",
      "location": "centralus",
      "logAnalyticsWorkspace": "law-cloudapp-prod",
      "retentionDays": 90,
      "smartDetection": true
    }
  ],
  "customMetrics": [
    {
      "name": "PageLoadTime",
      "threshold": 2000,
      "unit": "milliseconds"
    },
    {
      "name": "APIResponseTime",
      "threshold": 500,
      "unit": "milliseconds"
    },
    {
      "name": "AuthenticationFailures",
      "threshold": 10,
      "window": "5 minutes"
    }
  ],
  "alertRules": [
    {
      "name": "HighAuthFailureRate",
      "condition": "AuthenticationFailures > 10 in 5 minutes",
      "action": "Email DevOps team"
    },
    {
      "name": "SlowResponseTime",
      "condition": "APIResponseTime > 3000 ms",
      "action": "Slack #alerts channel"
    },
    {
      "name": "HighErrorRate",
      "condition": "ErrorRate > 5%",
      "action": "Page on-call engineer"
    }
  ]
}
```

**Step 3: Commit and Push**

1. **Stage changes:** Click "Stage all changes"
2. **Commit:**
   ```
   Add monitoring and observability configuration
   
   - Configured Application Insights for test and prod
   - Set up custom metrics for performance tracking
   - Created alert rules for critical issues
   - Documented retention policies
   ```
3. **Push:** Click "Push" → "Submit"

---

#### As Programmer B - Adding CI/CD Pipeline Configuration

**Step 1: Switch to Main and Create Branch**

1. **Switch to `main`:** Double-click `main`
2. **Pull latest:** Click "Pull"
3. **Create branch:**
   - Right-click `main`
   - "Create branch here"
   - Name: `feature/cicd-pipeline`
   - Create Branch

**Step 2: Add CI/CD Documentation and Scripts**

1. **Update `docs/setup-guide.md`** to add CI/CD section at the end:

```markdown
[... keep all existing content ...]

### CI/CD Pipeline Configuration
- Status: ✅ In Progress (Programmer B)
- Assigned to: Programmer B

#### GitHub Repository Setup:
- Organization: techcorp-dev
- Repository: cloudapp-admin-portal
- Branch protection: Enabled on main
- Required reviews: 2 approvals
- Status checks required: All tests must pass

#### Branch Strategy:
- `main` → Production deployments
- `develop` → Test/staging deployments
- `feature/*` → Feature development
- `hotfix/*` → Emergency fixes

#### GitHub Actions Workflows:

**Test Deployment (deploy-test.yml)**
- Trigger: Push to `develop` branch
- Steps:
  1. Checkout code
  2. Install Node.js 18.x
  3. Run `npm install`
  4. Run `npm test`
  5. Run `npm run build`
  6. Deploy to Azure Static Web App (Test)
- Notifications: Slack #deployments on failure

**Production Deployment (deploy-prod.yml)**
- Trigger: Push to `main` branch
- Manual approval required: Yes
- Steps:
  1. Checkout code
  2. Install Node.js 18.x
  3. Run `npm install`
  4. Run `npm test`
  5. Run security scan
  6. Run `npm run build`
  7. Deploy to Azure Static Web App (Prod)
- Notifications: Email DevOps team on success/failure
```

2. **Create `scripts/deploy-test.sh`:**

```bash
#!/bin/bash
# Deploy to Test Environment

echo "Starting deployment to test environment..."

# Install dependencies
npm install

# Run tests
npm test
if [ $? -ne 0 ]; then
    echo "Tests failed! Aborting deployment."
    exit 1
fi

# Build application
npm run build
if [ $? -ne 0 ]; then
    echo "Build failed! Aborting deployment."
    exit 1
fi

# Deploy to Azure Static Web App
echo "Deploying to Azure..."
# Azure CLI commands would go here in real scenario

echo "Deployment to test environment complete!"
```

3. **Create `scripts/deploy-prod.sh`:**

```bash
#!/bin/bash
# Deploy to Production Environment

echo "Starting deployment to production environment..."
echo "⚠️  WARNING: This will deploy to PRODUCTION"
read -p "Are you sure? (yes/no): " confirm

if [ "$confirm" != "yes" ]; then
    echo "Deployment cancelled."
    exit 0
fi

# Install dependencies
npm install

# Run tests
npm test
if [ $? -ne 0 ]; then
    echo "Tests failed! Aborting deployment."
    exit 1
fi

# Run security scan
echo "Running security scan..."
npm audit
if [ $? -ne 0 ]; then
    echo "Security vulnerabilities found! Review before proceeding."
    read -p "Continue anyway? (yes/no): " proceed
    if [ "$proceed" != "yes" ]; then
        exit 1
    fi
fi

# Build application
npm run build
if [ $? -ne 0 ]; then
    echo "Build failed! Aborting deployment."
    exit 1
fi

# Deploy to Azure Static Web App
echo "Deploying to Azure..."
# Azure CLI commands would go here in real scenario

echo "✅ Deployment to production environment complete!"
```

4. **Create `.github/workflows/deploy-test.yml`:**
   - First create the `.github/workflows/` folder structure
   - Then create the file:

```yaml
name: Deploy to Test

on:
  push:
    branches:
      - develop

jobs:
  build-and-deploy:
    runs-on: ubuntu-latest
    
    steps:
      - name: Checkout code
        uses: actions/checkout@v3
      
      - name: Setup Node.js
        uses: actions/setup-node@v3
        with:
          node-version: '18.x'
      
      - name: Install dependencies
        run: npm install
      
      - name: Run tests
        run: npm test
      
      - name: Build application
        run: npm run build
      
      - name: Deploy to Azure Static Web App
        uses: Azure/static-web-apps-deploy@v1
        with:
          azure_static_web_apps_api_token: ${{ secrets.AZURE_STATIC_WEB_APPS_API_TOKEN_TEST }}
          repo_token: ${{ secrets.GITHUB_TOKEN }}
          action: "upload"
          app_location: "/"
          output_location: "build"
```

**Step 3: Commit and Push**

1. **Stage changes:** Click "Stage all changes"
2. **Commit:**
   ```
   Add CI/CD pipeline configuration
   
   - Created deployment scripts for test and prod
   - Added GitHub Actions workflow for automated test deployment
   - Documented branch strategy and approval process
   - Included security scan step for production
   ```
3. **Push:** Click "Push" → "Submit"

---

### Round 4: Integration and Final Delivery

Now both programmers have completed additional features. Let's integrate everything.

#### Integration Strategy: Merge Programmer A First

**As Programmer A:**

1. **Switch to `main`:** Double-click `main`
2. **Pull latest:** Click "Pull"
3. **Merge your monitoring branch:**
   - Right-click `feature/monitoring-setup`
   - "Merge feature/monitoring-setup into main"
   - Click "Merge"
   - **Should merge cleanly** (no conflicts - different sections of the file)
4. **Push:** Click "Push"
5. **Delete branch:** Right-click `feature/monitoring-setup` → Delete

---

#### As Programmer B: Update and Merge

**Step 1: Update Your Branch**

1. **Make sure you're on `feature/cicd-pipeline`**
2. **Fetch latest:** Click "Fetch"
3. **Merge main into your branch:**
   - Right-click `main`
   - "Merge main into feature/cicd-pipeline"
   - Click "Merge"
   - **Likely a conflict in `setup-guide.md`** (both added sections at the end)

**Step 2: Resolve Conflict**

1. **Click on `setup-guide.md`** in "Conflicted Files"
2. **In the merge tool, combine both sections:**
   - Keep Programmer A's Monitoring section
   - Keep Programmer B's CI/CD section
   - Save in the correct order

3. **Mark as resolved and commit:**
   ```
   Merge main into feature/cicd-pipeline
   
   - Integrated monitoring configuration
   - Resolved conflict in setup-guide.md
   - Both monitoring and CI/CD sections now present
   ```
4. **Push updated branch**

**Step 3: Merge to Main**

1. **Switch to `main`**
2. **Pull latest**
3. **Merge `feature/cicd-pipeline`:**
   - Right-click the branch
   - Merge into main
   - Should be clean now (conflict already resolved)
4. **Push**
5. **Delete feature branch**

---

### Final State: Review Your Work

**As Project Lead - Verify Everything**

1. **In GitKraken:**
   - Look at the visual graph
   - You should see a clean history of all the work
   - Multiple branches merged into `main`
   - A clear progression of features

2. **In your file explorer, review files:**
   ```
   cloudapp-infrastructure-practice/
   ├── .github/
   │   └── workflows/
   │       └── deploy-test.yml
   ├── azure-configs/
   │   ├── dataverse-environments.json
   │   ├── entra-id-apps.json
   │   ├── monitoring.json
   │   ├── resource-groups.json
   │   └── storage-accounts.json
   ├── docs/
   │   ├── git-workflow-tutorial.md
   │   └── setup-guide.md (comprehensive, all sections)
   ├── scripts/
   │   ├── deploy-test.sh
   │   └── deploy-prod.sh
   └── README.md
   ```

3. **On GitHub:**
   - Go to your repository
   - Click on "Insights" → "Network"
   - See the visual representation of your branch strategy
   - Review commits history

**What You've Learned:**
✅ How to create feature branches for parallel work
✅ How to handle merge conflicts realistically
✅ When to pull, push, fetch, and merge
✅ How to keep branches synchronized
✅ How to integrate work from multiple developers
✅ How to deliver finished code to main

---

## Practical Tips

### Common Pitfalls and How to Avoid Them

#### 1. **Forgetting to Pull Before Creating a Branch**
**Problem:** You create a branch from an outdated `main`, missing recent changes.

**Solution:**
- Always pull `main` before creating a new branch
- Make it a habit: Switch to `main` → Pull → Create branch

#### 2. **Working on `main` Instead of a Feature Branch**
**Problem:** You accidentally commit directly to `main`.

**Solution:**
- Before starting work, verify which branch you're on (check the bold branch in sidebar)
- If you realize the mistake: Right-click the commit → Create branch here → Give it a feature name → Reset `main` to before your commit

#### 3. **Pushing Before Resolving Conflicts**
**Problem:** You try to push a branch that has conflicts with `main`.

**Solution:**
- Before merging to `main`, update your branch with latest `main`
- Resolve conflicts in your branch first
- Then merge to `main`

#### 4. **Fear of Merge Conflicts**
**Reality:** Conflicts are normal and not scary!

**Solution:**
- GitKraken's merge tool makes them visual and easy
- When in doubt, combine both versions
- Communicate with your team about who's working on what files

#### 5. **Not Deleting Merged Branches**
**Problem:** Your branch list becomes cluttered and confusing.

**Solution:**
- Delete feature branches immediately after merging
- Keep only active work visible
- Merged branches are still in history if you need them

#### 6. **Massive Commits That Do Too Much**
**Problem:** One commit changes 50 files and is impossible to review.

**Solution:**
- Commit frequently with focused changes
- Each commit should represent one logical unit of work
- Write descriptive commit messages

### Coordination Tips for Two-Programmer Teams

#### Communication is Key
- **Before starting:** Agree on who works on which files
- **During work:** Quick check-ins if you need to touch the same file
- **Before merging:** Let the other person know you're merging to `main`

#### Pull Request (PR) Workflow (Real Teams)
In a real team, you'd use GitHub Pull Requests:
1. Push your feature branch to GitHub
2. Create a Pull Request on GitHub (comparing your branch to `main`)
3. Request review from teammate
4. Teammate reviews code, suggests changes
5. Make changes if needed
6. Teammate approves
7. Merge the PR on GitHub

**Why:** This adds code review and quality control.

#### When to Synchronize
- **Start of day:** Pull latest `main`
- **Before lunch:** Fetch to see what teammate pushed
- **Before going home:** Push your work (even if not done)
- **Before merging:** Always update your branch with latest `main`

#### Task Division Strategies
**Good division (minimal conflicts):**
- Programmer A: Azure resources and scripts
- Programmer B: Documentation and monitoring

**Bad division (many conflicts):**
- Both: "Work on the setup guide"
- Better: Assign specific sections to each person

### GitKraken Tips

#### Keyboard Shortcuts
- `Ctrl + P` or `Cmd + P`: Push
- `Ctrl + Shift + P` or `Cmd + Shift + P`: Pull
- `Ctrl + B` or `Cmd + B`: Create branch
- `Space`: Stage/unstage selected file

#### Visual Graph Reading
- **Solid lines:** Commits on branches
- **Merges:** Where lines converge
- **Branch labels:** Show current state of branches
- **HEAD:** Where you are currently

#### Stashing Changes (Advanced)
If you need to switch branches but have uncommitted changes:
1. Right-click in the workspace
2. "Stash" your changes
3. Switch branches
4. Come back and "Apply stash" to restore

---

## Next Steps: Expanding Your Skills

### Additional Practice Scenarios

1. **Simulate a Hotfix:**
   - Create a critical bug on `main`
   - Create `hotfix/critical-security-patch` branch
   - Fix quickly
   - Merge directly to `main`
   - Then merge `main` back into active feature branches

2. **Practice Rebasing (Advanced):**
   - Create a feature branch
   - Make commits
   - Update `main`
   - Rebase your branch on `main` (makes a cleaner history)

3. **Simulate a Large Team:**
   - Create 4 feature branches
   - Integrate them one by one
   - Handle multiple conflicts

### Resources for Deeper Learning

- **GitKraken Learn:** gitkraken.com/learn
- **GitHub Flow Guide:** guides.github.com/introduction/flow
- **Atlassian Git Tutorials:** atlassian.com/git/tutorials

### Preparing for Your Real Team

Before your new developer joins:

1. **Document your workflow:**
   - Write a brief "How we use Git" guide
   - Include branch naming conventions
   - Define when to create branches vs. when to merge

2. **Set up branch protection:**
   - On GitHub, go to Settings → Branches
   - Add rule for `main` branch
   - Require pull request reviews before merging

3. **Practice explaining:**
   - Imagine explaining to your new developer how to handle a merge conflict
   - The best way to learn is to teach

4. **Plan your first sprint:**
   - Divide work clearly
   - Assign files/features to avoid conflicts
   - Schedule daily sync-ups

---

## Conclusion

You've now experienced realistic two-programmer Git workflows:

✅ **Parallel Development:** Both programmers worked simultaneously without blocking each other

✅ **Conflict Resolution:** You handled realistic merge conflicts in a meaningful context

✅ **Integration:** You successfully combined work from multiple branches

✅ **Delivery:** You got finished, tested code into the `main` branch ready for deployment

✅ **Tools Mastery:** You used GitKraken's visual interface for all major Git operations

**Most Importantly:** You didn't just follow abstract "Git tutorial" exercises. You worked through actual infrastructure setup tasks, making realistic commits with meaningful content. This mirrors what you'll do with your real developer.

When your new team member joins, you'll be confident coordinating work, handling conflicts, and delivering code on schedule. You've practiced the "push and pull" of collaboration and understand the workflow deeply.

**Go build something great together! 🚀**
