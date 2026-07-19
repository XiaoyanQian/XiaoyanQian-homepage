---
title: "Reliable today, unreliable next year"
date: 2026-07-06
summary: "A model that passes validation at launch can quietly decay as patients, equipment, and workflows change. The world moves; the model does not move with it unless someone makes it."
---

Validation is a snapshot. Deployment is a moving target. A medical AI can pass every check at launch and still become unreliable months later, not because it was wrong then, but because the world it was measured against has changed.

This is drift. Patient mix shifts as a population ages or a new condition rises. A hospital swaps a scanner, changes an intake protocol, or adjusts a care pathway. Coding practices change. Disease prevalence moves with the season. The model learned a past distribution; the present has moved on, and the model does not move with it unless someone makes it.

Drift is dangerous precisely because it is silent. Performance does not fail loudly; it erodes. Predictive value slides as prevalence changes even when the model's internals are untouched. By the time a clinician notices "the alerts seem off lately," patients may already have been affected.

That is why the reliability of medical AI is not a property established once at launch. It is a property maintained. Governance turns "we validated it" into a standing commitment: monitor the inputs and outputs over time, set thresholds that trigger review, and assign someone the responsibility and authority to act when a threshold is crossed.

The governance questions are:

- What will we monitor after launch, how often, and against what baseline?
- What change triggers a review, and who owns that trigger?
- When performance drifts, who has the authority to recalibrate, restrict, or pause the system?

Deployment is not the end of validation. It is the moment continuous validation begins.
