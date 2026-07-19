---
title: "LLM Triage Risk and Escalation in Pre-consultation Workflow"
evidence_type: "Scenario-based governance case"
evidence_class: scenario
decision_state: "Conditional approval"
summary: "An LLM triage chatbot sorts patients into low-risk, routine, and urgent pathways before they see a doctor. The most dangerous failure is not a wrong answer; it is a missed red flag delivered in fluent, reassuring language."
---

## Problem

A clinic uses an LLM triage chatbot to collect symptoms and history before consultations, classifying patients as low-risk, routine, or urgent review. The LLM may underestimate critical symptoms, miss red flags, or use overly reassuring language that delays care-seeking. The governance focus is not whether the chatbot answers well, but under what conditions it must stop answering and escalate.

## Key risks

- **False negative triage**: high-risk patients classified as routine or low-risk.
- **Over-reassurance**: confident language leads patients to believe they need not see a doctor.
- **Responsibility boundary**: patients believe a medical judgement was made, while the clinic treats it as pre-consultation support.
- **Escalation failure**: chest pain, stroke signs, or suicidal ideation detected but not routed to a human.
- **Auditability**: after an incident, no way to reconstruct what was asked, answered, classified, and alerted.

## Governance mechanism

1. The LLM serves only as a **pre-consultation information collection and risk flagging tool**; it provides no diagnosis or medical advice.
2. Red-flag escalation rules (chest pain, breathing difficulty, stroke signs, severe allergy, pregnancy emergencies, suicidal ideation, high fever in children): once triggered, normal conversation stops, urgent advice is displayed, and clinical staff are notified.
3. All triage outputs carry uncertainty levels and display "AI-generated triage summary, clinician review required."
4. Monthly audits of false negatives, complaints, override rates, red-flag trigger accuracy, and escalation response time.

## RACI

**Responsible**: clinical safety lead (red flags and escalation protocol); IT and vendor (triggers, logging, alert routing). **Accountable**: clinical governance committee. **Consulted**: frontline clinicians, nurses, legal and compliance, data protection officer, patient representatives, indemnity adviser. **Informed**: patients, clinic management, clinical teams.

## Audit evidence

Red-flag rule list, clinical validation record, triage logs, patient input transcripts, AI risk categories, escalation timestamps, staff acknowledgement records, final clinician assessments, override logs, monthly false negative review, incident reports.

## Lesson

In clinical settings, the most dangerous output is not "I don't know." It is a critical condition underestimated in fluent language. The core capability of a safe triage system is knowing when to stop answering and hand over to a human.
