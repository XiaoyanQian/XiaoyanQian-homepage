---
title: "A model that helps on average can still harm a subgroup"
date: 2026-07-14
summary: "Average performance is a comfortable number. It is also where inequity hides. A medical AI can improve the aggregate while quietly getting worse for the patients who can least afford it."
---

Medical AI is usually reported in aggregate: overall accuracy, overall AUC, overall reduction in waiting time. Aggregates are reassuring, and that is exactly the problem. An average can improve while, underneath it, performance gets worse for a specific group.

The groups this happens to are predictable: women, older patients, minority populations, people with rare conditions, patients at under-resourced sites, those with limited language access, and those whose records are incomplete. These are often the groups already under-served, and a pooled metric is precisely the tool that hides what happens to them.

This is not only a fairness concern; it is a safety concern with an address. A model that under-detects a condition in one subgroup delivers real, concentrated harm to real people, while the headline number stays healthy. And because biased outputs can feed back into the data that trains the next version, the gap can widen over time rather than stay fixed.

Governance answers this by refusing to accept the average as sufficient evidence. Performance must be reported disaggregated, by sex, age, ethnicity, site, and data completeness, and a clinically unjustified gap must trigger action, not just a footnote.

The questions are:

- Is performance reported by subgroup, or only pooled?
- Which groups are too small in the data to be evaluated reliably, and is that absence acknowledged?
- When a subgroup gap appears, who is responsible for investigating and acting on it?

Equity in medical AI is not achieved by good intentions or a diverse-looking demo. It is achieved by looking under the average, on purpose, before deployment and continuously after.
