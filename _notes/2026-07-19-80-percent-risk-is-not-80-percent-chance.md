---
title: "80% risk does not mean an 80% chance"
date: 2026-07-19
summary: "A medical AI can rank patients well and still be wrong about probabilities. If '80% risk' does not mean roughly 80 in 100 similar patients, clinicians and patients are being miscalibrated, not informed."
---

When a medical AI says a patient's risk is 80%, it is natural to read that as: about 80 out of 100 similar patients will have the event. But a model can be good at ordering patients from lower to higher risk and still be wrong about the actual probabilities it prints. Ranking and calibration are not the same thing.

AUC, the metric most often quoted, measures ranking: whether higher-risk patients get higher scores than lower-risk ones. It says nothing about whether "80%" means 80%. A model can have a strong AUC and still be systematically overconfident or underconfident, printing 80% for a group whose true event rate is 50%, or 30%.

This matters because people act on the number, not on the ranking. A clinician deciding whether to escalate, a patient deciding whether to worry, a threshold deciding whether to alert, all treat the probability as if it were real. If it is not calibrated, every decision downstream inherits the distortion.

Calibration is therefore its own governance requirement, separate from discrimination. A deployment claim should show not only that the model ranks well but that its probabilities match observed reality, and that this holds within subgroups, not just overall. When prevalence shifts, calibration drifts, so it has to be monitored, not checked once.

The questions:

- Is there evidence the model is calibrated, or only that it has a good AUC?
- Does calibration hold within subgroups, or only in aggregate?
- How will calibration be monitored after deployment, as the population changes?

A risk score is a promise about probability. Governance is what makes the promise true, or refuses to let it be printed until it is.
