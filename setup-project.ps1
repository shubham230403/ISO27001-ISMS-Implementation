$ErrorActionPreference = "Stop"

Write-Host "Creating ISO 27001 / ISMS project..." -ForegroundColor Cyan

$folders = @(
    "01-ISMS-Context",
    "02-Policies",
    "03-Risk-Management",
    "04-Statement-of-Applicability",
    "05-Control-Implementation",
    "06-Compliance",
    "07-Audit",
    "08-CAPA",
    "09-Management-Review",
    "evidence\screenshots",
    "evidence\sample-records"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Force -Path $folder | Out-Null
}

@"
# ISO 27001:2022 ISMS Implementation

## Project Overview

A practical simulated implementation of an Information Security Management System (ISMS) for a fictional fintech organization.

**Organization:** FinSecure Technologies Pvt. Ltd.

The project demonstrates:

- ISMS context
- ISMS scope
- Interested parties
- Information-security policies
- Asset management
- Risk assessment
- Risk treatment
- Statement of Applicability
- Control implementation
- Compliance assessment
- Internal audit
- CAPA
- Management review
- Continual improvement

> Portfolio and learning project. This does not represent ISO certification.

## Implementation Lifecycle

Context
↓
Scope
↓
Asset Identification
↓
Risk Assessment
↓
Risk Treatment
↓
Statement of Applicability
↓
Control Implementation
↓
Internal Audit
↓
CAPA
↓
Management Review
↓
Continual Improvement
"@ | Set-Content "README.md" -Encoding UTF8

@"
# Organization Context

## Organization

**Name:** FinSecure Technologies Pvt. Ltd.

**Industry:** Fintech / Digital Financial Services

## Business Activities

FinSecure provides technology services supporting:

- Digital payment applications
- Customer onboarding
- Transaction processing
- API integrations
- Internal business applications
- Cloud-hosted services
- Customer support

## Internal Issues

- Cloud dependency
- Secure software development
- Access management
- Security awareness
- Vulnerability management
- Customer information protection
- Incident response
- Third-party risk

## External Issues

- Cybersecurity threats
- Financial fraud
- Regulatory requirements
- Contractual requirements
- Customer expectations
- Third-party risks
- Cloud-service dependency
- Privacy requirements
"@ | Set-Content "01-ISMS-Context\organization-context.md" -Encoding UTF8

@"
# Interested Parties

| Party | Requirement | Relevance |
|---|---|---|
| Customers | Protection of personal and transaction information | High |
| Employees | Secure systems and clear responsibilities | High |
| Management | Risk visibility | High |
| Regulators | Compliance | High |
| Banking Partners | Secure integrations | High |
| Vendors | Defined security requirements | Medium |
| Auditors | Objective evidence | High |
| Investors | Security governance | Medium |
"@ | Set-Content "01-ISMS-Context\interested-parties.md" -Encoding UTF8

@"
# ISMS Scope

The ISMS of FinSecure Technologies Pvt. Ltd. covers the people, processes, information, applications, infrastructure and supporting services used to develop, operate and support the organization's digital financial technology services.

## In Scope

- Production web applications
- APIs
- Cloud infrastructure
- Customer information
- Transaction information
- Employee information
- Source-code repositories
- Security monitoring
- Backup and recovery
- Vendor security management
- Software development lifecycle
- Corporate endpoints
- Authentication systems

## Out of Scope

Physical security controls operated exclusively by third-party data-center providers are outside FinSecure's direct operational control.

Relevant risks are addressed through supplier management and contractual requirements.

## Review

The scope should be reviewed annually and after significant organizational, technological, regulatory or security changes.
"@ | Set-Content "01-ISMS-Context\isms-scope.md" -Encoding UTF8

@"
# Information Security Policy

FinSecure Technologies Pvt. Ltd. is committed to protecting information and supporting business objectives through effective information-security management.

The organization will:

1. Protect confidentiality, integrity and availability.
2. Identify and manage information-security risks.
3. Comply with applicable requirements.
4. Provide security awareness.
5. Manage security incidents.
6. Identify and remediate vulnerabilities.
7. Protect customer and transaction information.
8. Manage third-party security risks.
9. Monitor security performance.
10. Continually improve the ISMS.

Management provides direction and resources for information security.

Employees and relevant third parties must follow applicable security requirements.
"@ | Set-Content "02-Policies\information-security-policy.md" -Encoding UTF8

@"
# Access Control Policy

## Objective

Ensure access to systems and information is authorized and appropriate.

## Requirements

- Unique user accounts
- Least privilege
- Role-based access
- MFA where required
- Periodic access reviews
- Prompt removal of terminated-user access
- Privileged-access controls
- Documented access changes

## Joiner / Mover / Leaver

New employees receive required access.

Role changes trigger access review.

Terminated users have access disabled promptly.
"@ | Set-Content "02-Policies\access-control-policy.md" -Encoding UTF8

@"
# Password and Authentication Policy

- Passwords must be unique.
- Passwords must not be shared.
- Authentication information must be protected.
- MFA should be enabled for sensitive systems.
- Default credentials must be changed.
- Failed authentication should be monitored.
- Compromised credentials must be reset promptly.
- Privileged accounts require stronger controls.
"@ | Set-Content "02-Policies\password-policy.md" -Encoding UTF8

@"
# Incident Response Policy

## Incident Lifecycle

Detection
↓
Reporting
↓
Triage
↓
Containment
↓
Investigation
↓
Eradication
↓
Recovery
↓
Lessons Learned

Security incidents must be reported, categorized, investigated and documented.

Relevant evidence must be preserved.

Critical incidents must be escalated.
"@ | Set-Content "02-Policies\incident-response-policy.md" -Encoding UTF8

@"
# Backup Policy

Critical business information shall be backed up.

Requirements:

- Scheduled backups
- Backup monitoring
- Restricted access
- Backup integrity checks
- Backup isolation
- Recovery testing
- Failure investigation
"@ | Set-Content "02-Policies\backup-policy.md" -Encoding UTF8

@"
# Acceptable Use Policy

Users shall use organizational systems only for legitimate business and approved activities.

Users must:

- Protect credentials
- Protect company information
- Avoid unauthorized software
- Report suspicious activity
- Follow security policies
- Avoid unauthorized access
"@ | Set-Content "02-Policies\acceptable-use-policy.md" -Encoding UTF8

@"
# Secure Development Policy

Information security shall be integrated throughout the software development lifecycle.

Requirements:

- Security requirements during design
- Secure coding
- Code review
- Dependency management
- Security testing
- Vulnerability remediation
- Change management

Security testing may include:

- SAST
- DAST
- Dependency scanning
- API testing
- OWASP testing
"@ | Set-Content "02-Policies\secure-development-policy.md" -Encoding UTF8

@"
# Risk Assessment Methodology

## Formula

Risk Score = Likelihood × Impact

Both are rated from 1 to 5.

## Likelihood

1 = Rare
2 = Unlikely
3 = Possible
4 = Likely
5 = Almost Certain

## Impact

1 = Insignificant
2 = Minor
3 = Moderate
4 = Major
5 = Severe

## Rating

1-5 = Low
6-10 = Medium
11-15 = High
16-25 = Critical

## Treatment

- Avoid
- Mitigate
- Transfer
- Accept

Every risk requires an owner and treatment decision.
"@ | Set-Content "03-Risk-Management\risk-methodology.md" -Encoding UTF8

@"
Asset ID,Asset Name,Owner,Classification,Location
A-001,Customer Database,Data Protection Owner,Confidential,Cloud
A-002,Production Web Application,Application Owner,Confidential,Cloud
A-003,API Platform,Application Owner,Confidential,Cloud
A-004,Source Code Repository,Engineering Manager,Confidential,Cloud
A-005,Employee Endpoints,IT Manager,Internal,Corporate Network
A-006,Backup Storage,IT Manager,Confidential,Cloud
A-007,Security Logs,SOC Owner,Confidential,SIEM
A-008,Identity Platform,IT Manager,Confidential,Cloud
A-009,Cloud Infrastructure,Cloud Owner,Confidential,Cloud
A-010,Employee Information,HR Manager,Confidential,Corporate Systems
"@ | Set-Content "03-Risk-Management\asset-register.csv" -Encoding UTF8

@"
Risk ID,Asset,Threat,Vulnerability,Likelihood,Impact,Risk Score,Risk Rating,Treatment,Risk Owner
R-001,Customer Database,Data Breach,Excessive Database Privileges,4,5,20,Critical,Mitigate,Data Protection Owner
R-002,Production Web Application,SQL Injection,Insufficient Input Validation,4,5,20,Critical,Mitigate,Application Owner
R-003,Employee Accounts,Account Compromise,Weak Authentication,4,4,16,Critical,Mitigate,IT Manager
R-004,Cloud Storage,Data Exposure,Incorrect Access Configuration,3,5,15,High,Mitigate,Cloud Owner
R-005,Backup Storage,Ransomware,Insufficient Backup Isolation,3,5,15,High,Mitigate,IT Manager
R-006,Source Code Repository,Unauthorized Access,Excessive Permissions,3,4,12,High,Mitigate,Engineering Manager
R-007,Security Logs,Log Tampering,Insufficient Monitoring,3,4,12,High,Mitigate,SOC Owner
R-008,Employee Endpoints,Malware,Insufficient Endpoint Protection,3,4,12,High,Mitigate,IT Manager
R-009,API Platform,API Abuse,Weak Authentication,3,5,15,High,Mitigate,Application Owner
R-010,Identity Platform,Credential Theft,Phishing and Credential Reuse,4,5,20,Critical,Mitigate,IT Manager
"@ | Set-Content "03-Risk-Management\risk-register.csv" -Encoding UTF8

@"
# Risk Treatment Plan

| Risk | Treatment | Owner | Priority |
|---|---|---|---|
| R-001 | Least privilege and database access review | Data Protection Owner | Critical |
| R-002 | Secure SDLC and application security testing | Application Owner | Critical |
| R-003 | MFA and access lifecycle controls | IT Manager | Critical |
| R-004 | Cloud configuration reviews | Cloud Owner | High |
| R-005 | Isolated backups and recovery testing | IT Manager | High |
| R-006 | Repository permissions and reviews | Engineering Manager | High |
| R-007 | Centralized logging and monitoring | SOC Owner | High |
| R-008 | Endpoint protection and patching | IT Manager | High |
| R-009 | API authentication and authorization testing | Application Owner | High |
| R-010 | MFA and security awareness | IT Manager | Critical |
"@ | Set-Content "03-Risk-Management\risk-treatment-plan.md" -Encoding UTF8

@"
Control Area,Applicable,Status,Justification,Evidence
Access Control,Yes,Implemented,Required to protect systems,Access Control Policy
Identity Management,Yes,Partial,Required for user lifecycle,Access Review
Authentication,Yes,Implemented,Required to protect accounts,Password Policy
Awareness,Yes,Partial,Employees require security awareness,Training Records
Vulnerability Management,Yes,Partial,Technical vulnerabilities must be managed,Scan Reports
Logging and Monitoring,Yes,Partial,Security events require detection,SIEM Evidence
Backup,Yes,Implemented,Business information requires recovery,Backup Records
Secure Development,Yes,Partial,Applications require secure development,SDLC Procedure
Supplier Security,Yes,Partial,Third parties create risk,Supplier Assessment
Incident Management,Yes,Partial,Incidents require response,Incident Procedure
Cryptography,Yes,Partial,Sensitive data requires protection,Cryptography Standard
Change Management,Yes,Partial,Unauthorized changes create risk,Change Records
Asset Management,Yes,Implemented,Assets must be identified,Asset Register
Configuration Management,Yes,Partial,Secure configurations reduce risk,Configuration Baseline
"@ | Set-Content "04-Statement-of-Applicability\soa.csv" -Encoding UTF8

@"
# Access Control Implementation

## Controls

- Role-based access
- Least privilege
- Joiner/mover/leaver
- Periodic access review
- MFA
- Privileged-access controls
- Account deactivation

## Evidence

- Access requests
- Access reviews
- User accounts
- MFA configuration
- Offboarding records

## Metric

Percentage of quarterly access reviews completed on time.
"@ | Set-Content "05-Control-Implementation\access-control.md" -Encoding UTF8

@"
# Cryptography

Sensitive information should be protected using appropriate cryptographic controls.

Measures include:

- Encryption in transit
- Encryption at rest where required
- Secure key management
- Strong cryptographic algorithms
- Restricted key access
- Periodic cryptographic review

Evidence:

- TLS configuration
- Encryption configuration
- Key-management records
"@ | Set-Content "05-Control-Implementation\cryptography.md" -Encoding UTF8

@"
# Logging and Monitoring

## Objective

Detect and investigate suspicious activity.

## Log Sources

- Authentication logs
- Application logs
- Web-server logs
- Endpoint logs
- Security alerts

## Example Detection Use Cases

- Failed-login bursts
- Brute-force attempts
- Privilege changes
- Suspicious administrative activity
- Application attacks
- Malware alerts

Evidence includes SIEM alerts, log samples, detection rules and incident records.
"@ | Set-Content "05-Control-Implementation\logging-monitoring.md" -Encoding UTF8

@"
# Vulnerability Management

## Process

Asset Discovery
↓
Vulnerability Scanning
↓
Validation
↓
Risk Rating
↓
Remediation
↓
Retesting
↓
Closure

## Tools

- Nmap
- Nessus
- Burp Suite
- OWASP testing techniques
- SAST
- DAST

## Evidence

- Scan reports
- Vulnerability tickets
- Remediation evidence
- Retest reports
- Closure approvals
"@ | Set-Content "05-Control-Implementation\vulnerability-management.md" -Encoding UTF8

@"
# Backup and Recovery

Controls:

- Scheduled backups
- Backup monitoring
- Restricted backup access
- Integrity checks
- Backup isolation
- Recovery testing
- Failure investigation

Evidence:

- Backup reports
- Recovery tests
- Backup inventory
- Access records
"@ | Set-Content "05-Control-Implementation\backup-recovery.md" -Encoding UTF8

@"
# Supplier Security

## Process

1. Identify supplier.
2. Determine security requirements.
3. Perform due diligence.
4. Review contractual requirements.
5. Approve supplier.
6. Monitor supplier.
7. Perform periodic review.

Evidence:

- Supplier assessments
- Security questionnaires
- Contracts
- Security clauses
- Review records
"@ | Set-Content "05-Control-Implementation\supplier-security.md" -Encoding UTF8

@"
# Secure Development

Requirements:

- Security requirements
- Secure design
- Secure coding
- Code review
- Security testing
- Vulnerability remediation
- Change management

Testing can include:

- SAST
- DAST
- Dependency scanning
- API testing
- Authentication testing
- Authorization testing
- OWASP Top 10 testing
"@ | Set-Content "05-Control-Implementation\secure-development.md" -Encoding UTF8

@"
Area,Current State,Target State,Gap,Priority,Action
Context,Scope drafted,Defined and maintained,Formal review mechanism,Medium,Annual and change-driven review
Risk Management,Risk register created,Repeatable risk process,Formal review cadence,High,Quarterly risk review
Access Control,Policy drafted,Operational evidence,Access review evidence incomplete,Medium,Quarterly access review
Vulnerability Management,Process drafted,Closed-loop remediation,Retest evidence incomplete,High,Require retest before closure
Internal Audit,Audit plan created,Periodic audits,Evidence needs expansion,Medium,Perform scheduled audit
CAPA,CAPA register created,Effective closure,Effectiveness verification,High,Add effectiveness review
Management Review,Framework created,Periodic documented review,Meeting evidence required,Medium,Conduct management review
"@ | Set-Content "06-Compliance\iso27001-gap-assessment.csv" -Encoding UTF8

@"
ISO Area,Requirement,Project Evidence,Status
Clause 4,Context of organization,organization-context.md,Implemented
Clause 4,Interested parties,interested-parties.md,Implemented
Clause 4,ISMS scope,isms-scope.md,Implemented
Clause 5,Information security policy,information-security-policy.md,Implemented
Clause 6,Risk assessment,risk-register.csv,Implemented
Clause 6,Risk treatment,risk-treatment-plan.md,Implemented
Clause 7,Awareness,Awareness Process,Partial
Clause 7,Documented information,Repository Documentation,Implemented
Clause 8,Operational risk treatment,Risk Treatment Plan,Implemented
Clause 9,Monitoring,Logging and Metrics,Partial
Clause 9,Internal audit,internal-audit-plan.md,Implemented
Clause 9,Management review,management-review.md,Partial
Clause 10,Corrective action,capa-register.csv,Implemented
Clause 10,Continual improvement,CAPA and Management Review,Partial
"@ | Set-Content "06-Compliance\compliance-matrix.csv" -Encoding UTF8

@"
# Internal Audit Plan

## Objective

Evaluate whether the simulated ISMS processes are appropriately designed and implemented.

## Scope

- ISMS context
- ISMS scope
- Risk management
- Access control
- Vulnerability management
- Logging
- Incident management
- Supplier security
- CAPA
- Management review

## Audit Process

1. Review documents.
2. Inspect evidence.
3. Test controls.
4. Identify findings.
5. Assign corrective actions.
6. Track closure.
7. Verify effectiveness.
"@ | Set-Content "07-Audit\internal-audit-plan.md" -Encoding UTF8

@"
ID,Audit Area,Question,Evidence,Status
AUD-001,ISMS Context,Is scope documented?,ISMS Scope,Pass
AUD-002,Interested Parties,Are interested parties identified?,Interested Parties Register,Pass
AUD-003,Risk Management,Are risks identified?,Risk Register,Pass
AUD-004,Risk Treatment,Are treatment owners assigned?,Risk Treatment Plan,Pass
AUD-005,Access Control,Are access reviews performed?,Access Review Records,Partial
AUD-006,Vulnerability Management,Are vulnerabilities tracked?,Vulnerability Register,Partial
AUD-007,Logging,Are security logs monitored?,SIEM Evidence,Partial
AUD-008,Incident Management,Are incidents documented?,Incident Records,Partial
AUD-009,Supplier Security,Are suppliers assessed?,Supplier Assessment,Partial
AUD-010,Internal Audit,Is audit process defined?,Audit Plan,Pass
AUD-011,CAPA,Are findings tracked?,CAPA Register,Fail
AUD-012,Management Review,Are results reviewed?,Management Review,Partial
"@ | Set-Content "07-Audit\audit-checklist.csv" -Encoding UTF8

@"
Finding ID,Area,Finding,Severity,Root Cause,Corrective Action,Owner,Status
F-001,Access Control,Access review evidence is incomplete,Medium,Process not consistently documented,Implement quarterly access review,IT Manager,Open
F-002,Vulnerability Management,Retest evidence is incomplete,High,No standardized retest workflow,Require retest evidence before closure,Application Owner,Open
F-003,CAPA,CAPA tracking is not fully operational,High,No centralized tracking process,Implement CAPA register and monthly review,ISMS Manager,Open
F-004,Management Review,Management review evidence is unavailable,Medium,Review cycle not completed,Schedule and document management review,ISMS Manager,Open
"@ | Set-Content "07-Audit\audit-findings.csv" -Encoding UTF8

@"
# Internal Audit Report

## Summary

A simulated internal audit was performed against the defined ISMS processes.

## Strengths

- ISMS scope defined
- Interested parties documented
- Risk register established
- Risk treatment assigned
- Security policies established
- Internal audit process documented
- CAPA process initiated

## Findings

### High

1. Vulnerability remediation lacks consistent retest evidence.
2. CAPA tracking requires formal operationalization.

### Medium

1. Access-review evidence requires improvement.
2. Management-review evidence is incomplete.

## Conclusion

The simulated organization has established a basic ISMS framework. Additional implementation evidence, control testing and corrective-action effectiveness verification are required.
"@ | Set-Content "07-Audit\audit-report.md" -Encoding UTF8

@"
CAPA ID,Finding ID,Root Cause,Corrective Action,Owner,Due Date,Priority,Status,Effectiveness Review
CAPA-001,F-001,Inconsistent access review documentation,Create quarterly access review checklist,IT Manager,2026-11-15,Medium,Open,Pending
CAPA-002,F-002,Missing vulnerability retest workflow,Require retest evidence before closure,Application Owner,2026-11-10,High,Open,Pending
CAPA-003,F-003,No centralized CAPA process,Create CAPA register and monthly review,ISMS Manager,2026-11-05,High,Open,Pending
CAPA-004,F-004,Management review not completed,Schedule and document management review,ISMS Manager,2026-11-20,Medium,Open,Pending
"@ | Set-Content "08-CAPA\capa-register.csv" -Encoding UTF8

@"
# Corrective Action Process

Finding
↓
Correction
↓
Root Cause Analysis
↓
Corrective Action
↓
Owner Assignment
↓
Implementation
↓
Evidence
↓
Effectiveness Review
↓
Closure

CAPA records must contain:

- Finding ID
- Root cause
- Corrective action
- Owner
- Due date
- Priority
- Status
- Evidence
- Effectiveness review
- Closure date
"@ | Set-Content "08-CAPA\corrective-action-process.md" -Encoding UTF8

@"
# Management Review

## Inputs

- Risk status
- Security incidents
- Audit findings
- CAPA status
- Security objectives
- Vulnerability trends
- Control performance
- ISMS changes
- Resource requirements
- Supplier security

## Example Decisions

1. Increase security-awareness training.
2. Prioritize high-risk vulnerabilities.
3. Require quarterly access reviews.
4. Improve evidence retention.
5. Review CAPA progress monthly.
6. Improve vulnerability-retest documentation.

## Outputs

Management shall document:

- Decisions
- Actions
- Owners
- Due dates
- Required resources
- Improvement opportunities
"@ | Set-Content "09-Management-Review\management-review.md" -Encoding UTF8

@"
# Evidence Repository

Use this directory for sanitized portfolio evidence.

Examples:

- Access review
- Vulnerability scan
- Remediation evidence
- Security awareness record
- Audit evidence
- CAPA closure evidence
- Management review evidence

Never upload:

- Passwords
- API keys
- Access tokens
- Customer information
- Confidential company information
- Production credentials
"@ | Set-Content "evidence\README.md" -Encoding UTF8

@"
.env
*.env
*.key
*.pem
*.pfx
*.p12
secrets/
credentials/
__pycache__/
.vscode/
.idea/
.DS_Store
Thumbs.db
"@ | Set-Content ".gitignore" -Encoding UTF8

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host " ISO 27001 PROJECT CREATED" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""

Write-Host "Files created:" -ForegroundColor Cyan
(Get-ChildItem -Recurse -File).Count

Write-Host ""
Write-Host "Run: tree /F" -ForegroundColor Yellow