---
title: "Human Override and Audit Log for Clinical AI"
evidence_type: "Scenario-based governance case"
evidence_class: scenario
decision_state: "Conditional approval"
summary: "Clinicians were asked to 'review' AI outputs while seeing only conclusions: no inputs, confidence, version, or override history. Oversight is not real unless the human has enough information and recorded responsibility to challenge the AI."
---

## Problem

A hospital deploys a clinical AI that flags high-risk patients and assists prioritization. The system nominally includes human-in-the-loop review, but clinicians see only the AI's conclusions, without model inputs, confidence scores, version history, trigger rules, or past override records. When something goes wrong, it is impossible to tell whether the failure was the AI, the clinician, the workflow, or an undesigned responsibility boundary.

## Key risks

- Review is formal rather than informed: clinicians lack the information needed for real judgement.
- Automation bias from over-reliance on AI recommendations.
- Unlogged overrides make post-hoc audit impossible.
- Unclear responsibility when a clinician overrides the AI and the outcome is poor.
- Version changes destroy the decision context needed to reconstruct past cases.

## Governance mechanism

A **Human Override and Audit Log Protocol**:

1. Every AI output displays model version, input timestamp, confidence or uncertainty, main trigger factors, and recommended action.
2. Every override records a reason code (missing data, clinical context mismatch, patient preference, unsafe output).
3. High-risk overrides require second review or clinical safety review.
4. Override patterns are analysed periodically to distinguish model problems, workflow problems, and training problems.
5. The audit log is tamper-evident and linked to the incident response SOP.

## RACI

**Responsible**: clinical workflow owner, AI product owner, hospital IT. **Accountable**: clinical / medical director. **Consulted**: clinicians, nursing lead, legal and compliance, data protection officer, vendor. **Informed**: quality and safety committee, hospital management, regulator for serious incidents.

## Audit evidence

AI output log, model version history, override records and reason codes, clinical review notes, user access log, incident escalation records, monthly override analysis, change approval records, clinician training records.

## Lesson

The override log exists not to punish clinicians but to show the organization where the AI is unreliable. Good clinical AI governance protects three parties at once: patients get safety, clinicians get a real basis for judgement, and the institution gets an auditable evidence chain.
