---
title: "A risk threshold is not a technical detail. It is a governance choice"
date: 2026-07-19 09:07
summary: "Most medical AI outputs a risk score, and someone draws a line: above it, act; below it, do not. That line silently allocates false alarms, missed cases, cost, and responsibility. Deciding where it sits is governance, not engineering."
---

Many medical AI systems do not say "disease" or "no disease." They output a risk score, and then someone, or some default setting, draws a line: above 0.7, alert the clinician; below it, stay quiet. That line looks like a technical parameter. It is actually a decision about who bears which risk.

Move the threshold up and you get fewer false alarms and less clinician burden, but you miss more genuinely high-risk patients. Move it down and you catch more true cases, but you flood clinicians with false positives until the alerts are ignored. There is no setting that removes the trade-off; there is only a choice about how to distribute it, between missed cases and false alarms, between patient safety and clinician attention, between one group and another.

Because it is a choice, the important question is not "what is the optimal threshold?" but "who decided, on what basis, and who lives with the consequences?" A threshold set silently by a vendor default is a governance decision made by someone with no accountability for the outcome.

Governance treats the threshold as what it is: a policy. It should be set through the clinical governance process, documented with its rationale, reviewed as prevalence and workflow change, and owned by someone with the authority to accept the trade-off it encodes.

The questions:

- Who set this threshold, and is that the party accountable for the harm on either side of it?
- What does moving it cost, in missed cases versus false alarms, and for whom?
- What triggers a review of the threshold after deployment?

A number on a slider is quietly allocating safety. Deciding where it sits is not engineering. It is governance.
