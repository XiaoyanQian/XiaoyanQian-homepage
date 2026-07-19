---
title: "Medical AI Model Drift in Clinical Deployment"
evidence_type: "Scenario-based governance case"
evidence_class: scenario
decision_state: "Conditional approval"
summary: "A screening model's sensitivity fell from 88% to 70% six months after deployment. The governance question is not why the model degraded, but who detects it, who escalates, and who decides whether it may keep running."
---

## Problem

A medical AI model for screening high-risk patients performed well in its pilot phase. Six months after deployment, the clinical data distribution shifted and sensitivity dropped from 88% to 70%. Missed cases rose from 2 to 11 per month. The clinical team initially dismissed it as "the alerts being a bit less accurate."

## Key risks

- **Patient safety**: increased false negatives delay diagnosis and treatment.
- **Clinical accountability**: clinicians do not know whether to trust the AI, and responsibility after an incident is unclear.
- **Model governance**: no drift monitoring thresholds or suspension mechanism existed post-deployment.
- **Trust**: rising false negatives and false alerts erode clinician trust until the system is ignored.
- **Regulatory and audit**: the hospital cannot demonstrate continuous oversight to management or regulators.

## Governance mechanism

1. Post-deployment monitoring: monthly tracking of sensitivity, specificity, PPV, NPV, false negative count, alert volume, and subgroup performance.
2. Escalation thresholds: sensitivity below 80%, missed cases above twice baseline, or significant subgroup degradation triggers an incident review.
3. Pending review, the model is downgraded to "reference only," carries a warning label, or has high-risk automated alerts suspended.
4. The clinical lead and AI governance committee jointly decide whether to recalibrate, retrain, restrict scope, or suspend.
5. All version updates, threshold breaches, and decisions form an audit trail.

## RACI

**Responsible**: data science / MLOps team (metrics, drift analysis, version records). **Accountable**: clinical lead and AI governance committee. **Consulted**: frontline clinicians, nurses, product, legal, vendor. **Informed**: hospital management, affected departments, regulators or ethics committee if required.

## Audit evidence

Monthly performance dashboard, drift report, threshold breach log, incident review minutes, model version log, clinical sign-off record, risk register update, decision memo, user communication notice.

## Lesson

The reliability of medical AI is not one-time accuracy. It is whether the system can be continuously monitored, correctly escalated, and clearly owned after deployment. Model drift is not a technical inconvenience; it is a patient safety and organizational responsibility problem.
