##  Global-Cyber-security-Threat-Analysis

## Overview
An interactive Power BI dashboard analyzing 3,000 global cybersecurity incidents from 2015–2024, built to help security teams and analysts spot which industries, countries, and attack types drive the highest financial and operational risk — and which defenses are actually working.

##  Tech Stack
- **Power BI** – dashboard design and visualization
- **Python** (Pandas) – data cleaning and preprocessing
- **SQL** – data querying

## Data Source
- Dataset: [Global Cybersecurity Threats 2015-2024](Kaggle)
- 3,000 records, one row per reported incident
- Columns: Country, Year, Attack Type, Target Industry, Financial Loss (in Million $), Number of Affected Users, Attack Source, Security Vulnerability Type, Defense Mechanism Used, Incident Resolution Time (in Hours)

## Features / Highlights

**Business Problem**
Organizations face a rising volume of cyberattacks, but without visibility into *where* losses concentrate and *which* defenses hold up, security investment tends to be reactive rather than targeted.

**Goal of the Dashboard**
Give stakeholders a single view to answer: Which industries and countries are most exposed? Which attack types cause the most damage? And are current defense mechanisms reducing loss and resolution time?

**Walkthrough of Key Visuals**
- **KPI Cards** – Total Attacks (3K), Total Financial Loss ($151.48K M), Total Affected Users (1.51bn), and Avg Resolution Time (36.48 hrs) for an at-a-glance summary
- **Attack Category Table** – breaks down financial loss, affected users, and resolution time across categories like Site Closed, Database Attack, Email Fraud, Data Lock, Virus Attack, and Message Stolen
- **Financial Loss Trend** – line chart showing losses fluctuating year over year, with a sharp dip in 2019 and a steady climb from 2020–2023
- **Loss Severity** – bar chart splitting incidents into high, moderate, and low severity by financial impact
- **Financial Loss by Attack Source** – compares losses from nation-state actors, unknown sources, insiders, and hacker groups
- **Affected Users by Country** – UK, Russia, India, Japan, and the USA top the list
- **Attacks by Industry** – IT, Banking, and Healthcare see the highest attack counts
- **Affected Users by Defense Mechanism** – compares how many users were impacted under antivirus, VPN, firewall, AI-based detection, and encryption

**Business Impact & Insights**
## 💡 Business Impact & Insights
- **IT and Government carry the highest overall risk** — IT has the highest total financial loss ($24.8B across 478 incidents) due to sheer volume, while Government has the highest average loss *per incident* ($52.6M), suggesting fewer but more costly attacks. Defense budgets should weigh both attack frequency and severity, not just headline counts.
- **Nation-state attacks account for the largest total loss by attack source** ($40.5B), driven by both a high incident count (794) and among the highest per-incident average loss ($51.0M) — pointing to sustained, well-resourced campaigns rather than isolated events.
- **Resolution time is fairly consistent across defense mechanisms** (35.7–36.9 hrs on average), with Firewalls resolving marginally faster than VPNs — indicating that in this dataset, the choice of defense tool has less impact on response speed than expected, and incident response process may matter more than the tool itself.

##   Dashboard Preview

https://github.com/maheshwari-949/Global-Cyber-security-Threat-Analysis/blob/main/cyber%20security%20dashboard.png

<img width="1142" height="643" alt="cybersecurity dashboard" src="https://github.com/user-attachments/assets/9d3d9ce4-dec6-4c9e-a96c-cf1247749a7c" />
