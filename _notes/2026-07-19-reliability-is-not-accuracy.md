---
title: "Reliability is not accuracy: what a screening number hides"
date: 2026-07-01
summary: "A cancer-screening model that finds 90% of patients can still be a poor bet for deployment. The governance question is not how accurate it is, but what its errors cost, who bears them, and whether anyone will notice when it drifts."
---

Consider a cancer-screening model tested on 1,000 people. One hundred have the disease, nine hundred do not. The model flags 90 of the 100 true cases, and it also flags 180 healthy people. Its sensitivity is 90%. On a slide, that number sells the system.

Now read the same result as a deployment decision. Of everyone the model calls positive, only 90 of 270 actually have the disease. Its positive predictive value is 33%. Two out of every three people told "your screen is positive" are healthy, and each will carry that alarm into more tests, more cost, and more anxiety. The accuracy headline and the lived experience of the system point in opposite directions.

This is why reliability is not accuracy. Accuracy asks whether the model is often right. Reliability asks a harder set of questions: where does it fail, on whom, what does each kind of error cost, and who is responsible for the answer. A model can be accurate in aggregate and unreliable for older patients, for women, or for a hospital whose scanner or case mix differs from the training set. Pooled accuracy hides exactly the failures that matter most.

Reliability is also not a fixed property. A model that was reliable at launch can drift as the patient population, the equipment, or the disease prevalence changes. Predictive value shifts with prevalence even when the model itself does not change. Without post-deployment monitoring, that drift stays invisible until a patient is harmed.

So the governance question is not "is it accurate?" It is:

- What is the error profile, not just the average? Sensitivity, specificity, and predictive values, reported by subgroup rather than pooled.
- Who bears the cost of each error, and is that the same party that profits from use?
- What threshold triggers review, who owns it, and what happens when it is crossed?

None of these are answered by a single accuracy figure. They are answered by evidence, ownership, and a monitoring plan. That is the difference between a model that scores well and a system that can be trusted with patients.
