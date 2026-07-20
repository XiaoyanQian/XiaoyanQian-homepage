---
title: "How to actually tell whether a medical AI helped"
date: 2026-07-11
summary: "If before-and-after cannot prove a medical AI worked, what can? Comparison: a control group, a natural experiment, or a difference-in-differences design that isolates the AI's effect from everything else that changed."
---

If "better after deployment" does not prove a medical AI worked, the natural next question is: what does? The answer is comparison. To credit the AI with an effect, you need something to compare against, a version of the world where the AI was not used but everything else was as similar as possible.

Three designs do this, in descending order of strength.

A **randomised controlled trial** splits patients, clinicians, wards, or hospitals into groups by chance, one using the AI and one not. Done well, randomisation makes the groups alike in everything except the AI, so a difference in outcomes is more plausibly caused by it. This is the strongest evidence and the hardest to arrange.

A **quasi-experiment** uses a natural difference the world already provides, for example one site adopting the tool while a comparable site does not. It is weaker than randomisation because the groups may differ in hidden ways, but it can be practical when a trial is not.

**Difference-in-differences** compares the change over time in an adopting group against the change over time in a non-adopting group. If both were trending together before, and only the adopter's trend bends after the AI arrives, that bend is more credibly the AI's effect than a raw before-and-after.

None of these is about statistical elegance. They are about a governance question: can we distinguish what the AI did from what would have happened anyway? A deployment claim backed by a control group is evidence. A deployment claim backed only by before-and-after is a hope with a chart.
