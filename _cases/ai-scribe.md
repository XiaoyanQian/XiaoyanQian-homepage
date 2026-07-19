---
title: "AI Scribe Responsibility Boundary in Clinical Documentation"
evidence_type: "Scenario-based governance case"
evidence_class: scenario
decision_state: "Conditional approval"
summary: "An AI scribe drafts consultation notes from doctor-patient conversations. The governance question is not whether it saves time, but when an AI draft becomes a legal medical record, and who is responsible for its content."
---

## Problem

A hospital introduces an AI scribe that transcribes doctor-patient conversations and generates consultation notes, diagnosis summaries, and follow-up plans. The system occasionally misses negations, confuses medication dosages, or turns a patient's vague description into a definitive diagnosis. The question is not usability. It is: once this note enters the medical record, who is responsible for its content?

## Key risks

- **Clinical accuracy**: erroneous notes propagate into diagnosis, prescribing, and referral decisions.
- **Accountability**: unclear allocation among doctor, hospital, and vendor invites blame-shifting after incidents.
- **Consent and privacy**: patients may not know their conversations are recorded, transcribed, or used for model improvement.
- **Automation bias**: clinicians over-trust AI notes and skip line-by-line verification.
- **Legal record**: errors that enter the official record become evidence in medical disputes.

## Governance mechanism

1. The AI scribe generates **draft clinical notes only**; nothing enters the official record automatically.
2. The attending doctor must review, edit, and sign off before a note takes effect.
3. The interface marks "AI-generated draft" and enforces mandatory review checkboxes for high-risk fields: medications, allergy history, diagnoses, follow-up plans.
4. Patients receive a concise notice before use: recording, storage, model-improvement use, and opt-out.
5. The hospital audits AI notes regularly: error types and rates, doctor modification rates, complaints, incident reports.

## RACI

**Responsible**: attending doctor (final review and sign-off); IT and vendor (system logging and security). **Accountable**: clinical department head / clinical governance committee. **Consulted**: legal and compliance, medical records team, frontline clinicians, patient representatives, data protection officer. **Informed**: patients, clinical departments, hospital management.

## Audit evidence

Patient consent record, AI draft log, doctor edit history, sign-off timestamps, high-risk field checklist, sample audit reports, incident reports, vendor performance review, data retention records.

## Lesson

The core of AI scribe governance is documentation authority: who may generate, who must review, when a draft becomes an official record, how errors are corrected, and how patients are informed. AI may assist with documentation; it cannot absorb the clinician's responsibility.
