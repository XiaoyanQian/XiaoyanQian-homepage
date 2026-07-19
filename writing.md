---
layout: default
title: Research & Writing
permalink: /writing/
---

# Research & Writing

<p class="section-intro">
My research program asks one question: when a medical AI system speaks to patients about their own bodies,
what makes that voice accountable? The program is sequenced: an anchor manuscript frames the problem (submitted),
an ethics line and a technical line extend it (next and planned), and the long-term goal is a clinically deployed,
governed patient-facing twin. Publication status is stated honestly for every item.
Full publication list: <a href="https://scholar.google.com/citations?user=XNdT5EMAAAAJ">Google Scholar</a>.
</p>

## Anchor: accountable patient-facing interpretation
<p class="badge badge-published">Viewpoint manuscript · submitted</p>

**Beyond digital replicas: accountable patient-facing interpretation for medical digital twins.**

Medical digital twins are showing clinical value, but mostly in tightly bounded, expert-facing settings. This Viewpoint argues that the next frontier is not fuller anatomical replication but accountable patient-facing interpretation: what a system can responsibly explain, refuse, escalate, and audit when patients see the output. It contributes two tools:

- **A five-layer accountability map** separating sensing, representation, prediction, governed orchestration and explanation, and patient-clinician interaction, so that responsibility can be located rather than diffused.
- **A maturity framework (Grade 0 to 4)** distinguishing digital models, digital shadows, predictive twins, actionable twins, and conversational twins, so that deployment-readiness claims become auditable and falsifiable.

The governance position: a system should not be treated as a trustworthy conversational twin unless it can make uncertainty visible, show provenance, stay within validated scope, refuse unsupported claims, trigger escalation, and remain clinically supervised. Governance is part of the system boundary, not an administrative add-on.

## Line 1: the ethics of explanatory authority
<p class="badge badge-published">Normative paper · status: in preparation</p>

When the same system that passively monitors a patient also converses with them about what it infers, the monitoring relationship acquires an epistemic voice: consent is no longer only consent to data collection, but consent to a system that shapes how patients understand their own bodies. This paper locates the novel harm in unmarked domain-crossing: within a single conversation, a generative system can slide from the consented monitoring purpose to cross-domain and psychological inference without any signal that a line was crossed, defeating the discreteness on which existing consent and incidental-findings safeguards depend. The constructive claim: the protective scaffolding that makes ordinary health feedback safe must be built ex ante, by design, through validated scope, governed refusal, and auditable escalation.

## Line 2: governance infrastructure that can be built and tested
<p class="badge badge-published">Technical paper · status: planned; data access in progress</p>

The technical line turns the framework into testable engineering. A patient question passes through three sequential safeguards: task-specific guardrails (is this inside validated scope?), safety classification (how high is the risk, and should it escalate?), and retrieval-grounded generation (is every statement traceable to this patient's own record?). The paper's contribution is not to recommend one mechanism but to show that mechanism choice is itself an auditable governance decision, each with distinct provenance properties and failure modes, validated on public longitudinal health data.

## Long-term direction

The end state this program works toward is a prospectively evaluated, clinically supervised patient-facing twin in a bounded cardiometabolic use case, with refusal, escalation, and audit built in from the start rather than added after deployment. That is a multi-year undertaking involving clinical partners, ethics approval, and implementation research. The three papers above are deliberately staged so that each step is publishable, falsifiable, and useful on its own.

## Selected publications

- **Xiaoyan Qian**, Chang Liu, Xiaojuan Qi, Siew-Chong Tan, Edmund Y. Lam, Ngai Wong. <a href="https://link.springer.com/article/10.1007/s11263-025-02704-z">CAT++: Enhancing 3D Annotations with Hierarchical-Interleaved Encoding and Attention-Conditioned Implicit Representation</a>. <em>International Journal of Computer Vision</em>, 134(2), 2026.
- **Xiaoyan Qian**, Chang Liu, Xiaojuan Qi, Siew-Chong Tan, Edmund Lam, Ngai Wong. <a href="https://ojs.aaai.org/index.php/AAAI/article/view/25301">Context-Aware Transformer for 3D Point Cloud Automatic Annotation</a>. <em>Proceedings of the AAAI Conference on Artificial Intelligence</em>, 37(2), 2082–2090, 2023.

<p class="muted">This first-author line of work on 3D perception and automatic annotation underpins the representation and visualization layers of the medical digital twin. Full list on <a href="https://scholar.google.com/citations?user=XNdT5EMAAAAJ">Google Scholar</a>.</p>

## Shorter governance writing

Occasional public notes that translate one governance idea at a time, for example:

- Why the reliability of medical AI is not the same as model accuracy
- What an AI audit should actually audit
- When an AI-generated draft becomes a legal medical record
- Why "who is responsible when medical AI fails" is hard to answer, and how RACI, risk registers, and decision rights make it answerable

<p class="muted">Selected notes will appear here as they are published.</p>
