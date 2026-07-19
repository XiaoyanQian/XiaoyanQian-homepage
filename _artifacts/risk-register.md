---
title: "Risk Register (sanitized)"
evidence_type: "Project-derived · sanitized"
evidence_class: project
summary: "Converts diffuse concern into named, graded, owned, and reviewable risks. The design point is that no risk exists without an owner, a mitigation, and a review date."
---

## What this artifact is for

A risk register turns "we are worried about the model" into a structure an organization can act on. Every entry has a named owner, a mitigation, and a review date. Without an owner, nobody manages the risk. Without a mitigation, it is only a complaint. Without a review date, it gets forgotten.

This risk register is the instrument from the governance pack (v0.1) I developed for my patient-facing cardiometabolic digital twin, aligned with the bounded cardiometabolic use case in my Viewpoint. The entries are a post-deployment projection in the twin's own domain: the cardiovascular and metabolic risks the system would need to manage once deployed. The twin is pre-deployment, so these are projected risks used to exercise the structure, not figures from a live system. No confidential project or patient detail is included.

## Fixed metadata

| Field | Value |
| --- | --- |
| Data provenance | Wearable streams (heart rate, HRV, sleep, activity), EHR labs (HbA1c, lipids, blood pressure), validated self-reports, model output logs |
| Model version | Cardiometabolic Risk Model v[fill in] (within the patient-facing cardiometabolic twin) |
| Approval owner | AI Governance Lead + Patient Safety Committee |
| Effective date | [fill in] |
| Known limitation | Pre-deployment projection: risk grading reflects anticipated risks and will be revised against real monitoring evidence once deployed |

## Register

| ID | Risk | Category | Likelihood | Impact | Level | Risk owner | Existing control | Mitigation | Review |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| R1 | Model sensitivity for flagging accelerating cardiovascular risk fell from 86% to 72%; patients on a deteriorating cardiometabolic trajectory may be missed | Performance / patient safety | Medium | High | High | Governance Lead + Clinical Lead | Monthly performance monitoring | Start drift analysis; add clinician review; assess threshold change | 2 weeks |
| R2 | High-risk trajectory flags rose from about 80 to about 150 per week and PPV fell to 30%, producing alert fatigue | Workflow / efficiency | High | Medium | High | Clinical Lead | Clinician feedback channel | Tune thresholds; tiered alerts; log handling time | 2 weeks |
| R3 | Older patients and women show a higher miss rate, risking inequitable harm | Fairness / patient safety | Medium | High | High | Patient Safety / Equity Committee | No systematic subgroup audit yet | Age- and sex-stratified performance audit; restrict use if needed | 1 week |
| R4 | The twin surfaced elevated stress and disrupted-sleep signals to the patient as a psychological inference, risking stigma | Privacy / stigma | Medium | Medium-high | Medium-high | Governance Lead + Clinical Lead | Inference-display policy | Keep psychological signals as internal features; show trajectory only; patient opt-out | 1 week |
| R5 | Continued patient-facing operation during degradation may deliver misleading trajectory narratives | Patient safety / trust | Medium | High | High | Hospital management + Patient Safety Committee | Clinician review | Temporarily restrict to advisory; require clinician review before patient-facing output | 48 hours |

## The design principle

Each risk must carry three things: **a risk owner, a mitigation, and a review date.** The register also separates *who identifies* a risk, *who owns a control*, *who owns the risk*, and *who has authority to accept residual risk*, so that residual risk is accepted by people with the authority and resources to manage it, not defaulted onto whoever understands the model best.
