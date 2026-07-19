---
title: "A model that works in one hospital is not a model that works"
date: 2026-07-19 09:02
summary: "Medical AI is usually validated where it was built. But the sample a model learned from is not the world it will be deployed into, and the gap between them is a governance problem, not a technical footnote."
---

When a medical AI reports strong performance, the number almost always comes from one place: the data it was built and tested on. That data is a sample. The world the model will be deployed into is not.

A model trained mostly on large-hospital data, particular scanners, and a particular patient mix can look excellent in that small world and degrade the moment it meets a community clinic, a different device, a different population, or a different disease prevalence. Its accuracy was real, but it was local.

This is why external validation, tested on data the model has never seen from a setting like the one where it will actually run, is a governance requirement rather than a nice-to-have. Internal performance answers "does it fit the data it learned from?" External performance answers the question that matters for deployment: "does it hold up somewhere new?"

Selection bias makes this worse and quieter. If the training data systematically under-represents a group, a device, or a site, the model's weakness there will not show up in the pooled number. It shows up later, in the clinic, on the patients least able to absorb the error.

So the governance questions before deployment are not only "how accurate is it?" but:

- Where was it validated, and how similar is that to where it will be used?
- Which populations, sites, or devices are under-represented in the training data?
- What is the plan to validate locally before the model is trusted with local patients?

A model earns the right to be deployed somewhere by being tested somewhere like it. Until then, a good score is evidence about the sample, not about the world.
