---
title: "AI Agent Decision Rights in Medical Workflow"
evidence_type: "Scenario-based governance case"
evidence_class: scenario
decision_state: "Conditional approval"
summary: "A medical AI agent reads records, calls risk models, and drafts clinical summaries. Without an explicit decision-rights matrix, an assistive agent gradually becomes an unauthorized clinical decision-maker."
---

## Problem

A hospital deploys a medical AI agent that reads patient records, organizes symptoms, calls risk models, generates clinical summaries, and suggests next steps. The development team wants it to auto-create follow-up tasks, notify patients, and update parts of the record. Without clearly defined decision rights, the agent drifts from assistive tool to unauthorized clinical decision-maker.

## Key risks

- Agent modifies clinical records without clinician confirmation.
- Incorrect or incomplete information sent automatically to patients.
- Tool or data calls beyond authorized scope.
- Agent-to-agent chains blur the responsibility trail.
- Clinicians see only final outputs and cannot reconstruct the agent's actions.

## Governance mechanism

An **Agent Decision-Rights Matrix** sorts every action into three classes:

- **Autonomous**: search authorized data, organize information, create drafts.
- **Human approval required**: update official records, send personalized medical information to patients, create clinical follow-ups.
- **Prohibited**: make diagnoses, modify prescriptions, cancel treatment, replace clinicians in final decisions.

Every tool call logs agent identity, input, tool, result, approver, and timestamp.

| Agent | Permitted | Approval required | Prohibited | Accountable owner |
| --- | --- | --- | --- | --- |
| Data retrieval agent | Read authorized data | Cross-system retrieval | Read unauthorized data | Data owner |
| State-estimation agent | Generate risk estimates | Display results externally | Issue formal diagnoses | Clinical lead |
| Explanation agent | Draft explanations | Send to patients | Claim definitive outcomes | Medical director |

## RACI

**Responsible**: AI product owner, clinical workflow owner. **Accountable**: clinical / medical director. **Consulted**: clinicians, nurses, IT security, legal, data protection officer. **Informed**: hospital management, patients, vendor, relevant committees.

## Audit evidence

Agent permission register, tool-access configuration, decision-rights matrix, human approval records, action and tool-call logs, record change history, model and prompt versions, incident and override reports.

## Lesson

Human-in-the-loop cannot remain a slogan. Executable governance specifies which action, at which point, is approved by which named person, and how the system stops when approval is absent. The more autonomous the agent, the finer-grained the authority design and auditability must be.
