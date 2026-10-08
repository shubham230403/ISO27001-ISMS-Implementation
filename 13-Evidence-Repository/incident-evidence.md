\# Security Incident Evidence



\## FinSecure Technologies Pvt. Ltd.



\*\*Evidence ID:\*\* EVD-005  

\*\*Control:\*\* A.5.24 Incident Management Planning and Preparation  

\*\*Related Risks:\*\* R-007, R-010  

\*\*Owner:\*\* SOC Manager  

\*\*Status:\*\* Completed



\---



\## Incident ID



INC-2026-004



\## Incident Type



Multiple failed authentication attempts against an employee account.



\## Detection



The security monitoring system generated an alert after repeated failed authentication attempts from an unrecognized source.



\## Initial Severity



Medium



\## Investigation



The SOC reviewed:



\- Authentication logs

\- Source IP information

\- Account activity

\- Successful login events

\- User confirmation



\## Response Actions



1\. Account activity was temporarily restricted.

2\. Authentication logs were preserved.

3\. The user was contacted.

4\. Password credentials were reset.

5\. MFA status was verified.

6\. Relevant indicators were reviewed.

7\. Incident activity was documented.



\## Root Cause



The investigation indicated a suspected credential attack against the account.



No evidence of successful unauthorized access was identified in the simulated investigation.



\## Outcome



\*\*Incident Status:\*\* Closed



\*\*Data Exposure:\*\* None identified



\*\*Business Impact:\*\* Low



\## Lessons Learned



\- Continue monitoring failed authentication attempts.

\- Maintain MFA enforcement.

\- Conduct periodic security awareness training.

\- Review authentication alerts regularly.



\## Control Assessment



\*\*Result:\*\* Effective.



The incident response process demonstrated detection, investigation, response and documentation activities.



\## Audit Traceability



`EVD-005 → A.5.24 → R-007/R-010 → Incident Response → Audit Evidence`



\## Disclaimer



This is simulated evidence created for cybersecurity/GRC portfolio and learning purposes.

