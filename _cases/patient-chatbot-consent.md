---
title: "Patient-facing Chatbot Consent and Safety Governance"
evidence_type: "Scenario-based governance case"
evidence_class: scenario
decision_state: "Conditional approval"
summary: "Patients mistook a health-information chatbot for a formal medical service and delayed care based on its answers. Consent that only appears once on an opening screen is not consent; it must shape system behaviour."
---

## Problem

A healthcare organization launches a patient-facing chatbot for symptom queries, follow-up preparation, and general health information. Some patients believe the chatbot is a formal medical service and stop medication or delay care based on its responses.

## Key risks

- **Informed consent**: patients do not know they are interacting with AI.
- **Clinical safety**: overly certain or inappropriate advice.
- **Privacy**: patients volunteer sensitive history, medication, and mental health data.
- **Escalation**: emergency symptoms not routed to human staff.
- **Vulnerable users**: elderly patients, minors, and users with low health literacy over-read the system's authority.

## Governance mechanism

1. Before first use, a layered consent notice states the AI's identity, purpose, limitations, data handling, opt-out rights, and human support channels.
2. The chatbot must not provide definitive diagnoses or medication cessation instructions, and must not present itself as replacing a clinician.
3. Red flags (chest pain, stroke signs, suicidal ideation, severe allergic reaction) stop normal conversation and escalate immediately to human staff.
4. High-risk outputs carry a fixed safety message; all interactions, alerts, and human takeover times are logged.

## RACI

**Responsible**: clinical safety lead (safety rules); IT and vendor (consent flow, red-flag triggers, logging, escalation). **Accountable**: clinical governance committee. **Consulted**: doctors, nurses, legal and compliance, data protection officer, patient representatives, accessibility specialists. **Informed**: patients, hospital management, frontline teams.

## Audit evidence

Consent notice versions, patient acknowledgements, privacy notice, prompt and output logs, red-flag trigger records, escalation timestamps, human takeover records, complaints, safety testing reports, monthly incident review.

## Lesson

The core question is not how many questions the chatbot can answer, but whether patients clearly understand it is not a doctor. Effective consent must change system behaviour, not just appear once on an opening page. When the system meets high-risk symptoms, the most important capability is to stop and hand over.
