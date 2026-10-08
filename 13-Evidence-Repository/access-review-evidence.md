\# Access Review Evidence



\## FinSecure Technologies Pvt. Ltd.



\*\*Evidence ID:\*\* EVD-001  

\*\*Control:\*\* A.5.15 Access Control  

\*\*Related Risk:\*\* R-003 Account Compromise  

\*\*Review Frequency:\*\* Quarterly  

\*\*Control Owner:\*\* IT Manager  

\*\*Review Period:\*\* Q3 2026  

\*\*Status:\*\* Completed  



\---



\## Objective



Verify that user access to information systems is periodically reviewed and inappropriate access is identified and remediated.



\## Review Scope



The review covered:



\- Identity platform

\- Production application accounts

\- Administrative accounts

\- Source-code repository access

\- Cloud infrastructure access

\- Privileged accounts



\## Review Procedure



1\. Export the current user access list.

2\. Compare active accounts with the employee list.

3\. Review privileged accounts.

4\. Verify business justification for elevated access.

5\. Identify inactive accounts.

6\. Confirm removal or modification of unnecessary access.

7\. Record exceptions requiring follow-up.



\## Sample Review Results



| Category | Accounts Reviewed | Exceptions | Action |

|---|---:|---:|---|

| Standard Users | 42 | 1 | Access removed |

| Privileged Users | 8 | 1 | Privilege reduced |

| Service Accounts | 12 | 0 | No action |

| Former Employees | 3 | 0 | Access confirmed disabled |

| \*\*Total\*\* | \*\*65\*\* | \*\*2\*\* | \*\*Completed\*\* |



\## Exceptions



\### Exception 1



A user retained repository access after changing responsibilities.



\*\*Action:\*\* Repository access removed.



\### Exception 2



A privileged user had broader permissions than required.



\*\*Action:\*\* Administrative privileges reduced according to least-privilege requirements.



\## Control Assessment



\*\*Result:\*\* Effective with minor remediation.



The review demonstrated that access rights are periodically reviewed and inappropriate permissions can be identified and corrected.



\## Follow-Up



The IT Manager will verify completion of access-removal actions during the next quarterly review.



\## Audit Traceability



`EVD-001 → A.5.15 → R-003 → Access Control → Internal Audit`



\## Disclaimer



This is simulated evidence created for cybersecurity/GRC portfolio and learning purposes.

