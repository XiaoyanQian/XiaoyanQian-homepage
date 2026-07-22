---
title: "Model and Infrastructure Dependency Register (project-derived, sanitized)"
evidence_type: "Project-derived · pre-deployment · sanitized"
evidence_class: project
summary: "A register of the external models, cloud services, and hardware a patient-facing system depends on, each with an owner, a fallback, and a review trigger. It governs a failure mode most risk registers miss: not the model being wrong, but the model becoming unavailable."
---

## What this artifact is for

Most medical AI risk work is built around clinical failure: false negatives, subgroup performance, accuracy drift. This register covers a different failure mechanism that can produce the same patient harm through a completely different path: a model, cloud region, or chip supply the system depends on becoming unavailable, restricted, or withdrawn for reasons outside the project's control, such as a vendor outage, an export-control action, a licensing change, a price change, or a version deprecation.

The design point is the same as a risk register: no dependency exists without an owner, a fallback, and a review trigger. A dependency that exists only as a working credential, with no owner and no fallback, is an unmanaged risk, not an implementation detail.

This artifact is drawn from the governance pack (v0.1) of the patient-facing medical digital twin I am building at a joint university-industry AI laboratory at HKU. It is sanitized: no vendor names, contract terms, or confidential architecture detail are included. The dependencies are described at the level of function and category, and the register rows are an illustrative pre-deployment worked example used to exercise the structure, not a live production inventory.

## Why I built this (builder's perspective)

I did not add this because of a news headline. While building the twin's 3D generation and patient-facing explanation components, I repeatedly faced a concrete choice: use a stronger third-party hosted model I do not control, or a weaker component I can run and own inside our own environment. On a deadline, the pull is always toward the hosted model, because it makes the demonstration better today.

The question that does not show up in a demonstration is the one this register captures: if that hosted model changed its terms, raised its price, deprecated the version I validated against, or became unavailable for a policy reason, what exactly happens to the patient-facing feature, and who is responsible for that outcome? A dependency I chose for convenience becomes a governed decision only once it has an owner and a fallback, not just an API key that happens to work today. This is the builder's version of governance: I am naming the shortcuts I was tempted to take while building, and turning them into decisions someone can review.

## Fixed metadata

| Field | Value |
| --- | --- |
| Project stage | Incubation / pre-deployment |
| Scope | External models, cloud services, and hardware on a patient-facing path |
| Version | v0.1 |
| Known limitation | Pre-deployment worked example: owners and fallbacks are role-level placeholders to exercise the structure, to be fixed to named individuals before any external pilot |

## Dependency register

| Dependency (function) | Layer | What breaks if unavailable | Single point of failure? | Owner | Fallback / degraded mode | Review trigger |
| --- | --- | --- | --- | --- | --- | --- |
| Third-party hosted model for patient-facing explanation drafting | Model / inference | Explanation drafts cannot be generated; patient-facing text feature stops | Yes, if no second provider | Governance Lead + Eng Lead | Switch to smaller self-hosted model in reduced-scope mode; block feature rather than fail open | Vendor terms, price, or version change; export-control or access-policy change |
| Third-party 3D generation model or service | Model / rendering | 3D visualization pipeline cannot generate new assets | Yes | Eng Lead | Fall back to pre-generated or cached assets; disable live generation | Vendor deprecation; license change; cost threshold breach |
| Cloud region hosting inference and storage | Cloud infrastructure | Inference and data access interrupted for that region | Depends on multi-region setup | IT Security + Eng Lead | Documented failover region or safe shutdown of patient-facing features | Provider outage; jurisdictional or data-residency change |
| Accelerator (GPU) supply for on-prem fallback components | Hardware | Self-hosted fallback models cannot run at required capacity | Yes, during shortage | IT Security | Capacity reservation; degraded-throughput mode; queue non-urgent tasks | Export control on accelerators; supply shortage; procurement delay |
| Foundation model version pinned for validation | Model / versioning | Validated behaviour changes silently if the version is deprecated | Yes | Clinical Safety Lead | Pin version; hold a re-validation plan for the successor version | Vendor deprecation notice; forced version migration |

## The design principle

A dependency chosen for convenience is not automatically a governed decision. It becomes one only when the project can answer, for each external model, cloud service, or hardware line: what patient-facing function breaks if it becomes unavailable; whether it is a single point of failure; who owns the response, by name, rather than leaving it to IT by default; whether there is a documented fallback, degraded mode, or safe-shutdown path, and whether the feature should fail open or fail closed; and what event triggers re-review, including vendor, licensing, pricing, deprecation, and export-control changes, not just a fixed calendar date.

Before any patient-facing feature is treated as deployment-ready, every external dependency it relies on must appear in this register with an owner, a fallback, and a review trigger.

<p class="muted">Related note: <a href="{{ '/notes/2026-07-22-ai-governance-is-also-infrastructure-governance/' | relative_url }}">AI governance is also infrastructure governance</a> works through the same idea using a real 2026 export-control episode.</p>
