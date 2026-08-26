# WISE 2026 Industry Track, Paper 514, Camera-Ready Change Tracker

**Paper**: From Fragmented Records to Actionable Intelligence: LACK, a Knowledge Graph for Climate Accountability Practitioners
**Source file**: `main_it.tex` (sections in `sections_it/`)
**Reviews**: `WISE_Reviews.pdf`
**Scope of this pass**: Tier A (trivial) and Tier B (easy). Tier C parked, Tier D deferred to future work.

## Review summary

| Reviewer | Rating | Confidence |
|---|---|---|
| R1 | Weak Accept | Knowledgeable |
| R2 | Weak Reject | Expert |
| R3 | Accept | Knowledgeable |
| R4 (Yinan Liu) | Weak Accept | Knowledgeable |

Convergent concerns across R1, R2 and R4: evaluation scope, inferred vs asserted triple counts, unaudited COP30 label matching, strength of the "actionable intelligence" claim. R3 is positive and adds only the temporal weakness.

## Open questions to resolve before drafting

- [ ] Does the camera-ready allow extra pages, or is the 10-page limit still hard (inclusive of references)?
- [ ] Correct expert survey sample size: 9 completions vs the "5 of 8" denominator. Needed for B5.
- [ ] Reference [13]: which of the two DOIs is correct?
- [ ] Data collection date (December 2025) vs citation access dates (April 2026): which is authoritative?

---

## Tier A, trivial

| ID | Change | Raised by | Location | Status | Notes |
|---|---|---|---|---|---|
| A1 | Fix running header placeholder "Title Suppressed Due to Excessive Length", add `\titlerunning{}` | R1 | `main_it.tex` preamble | [ ] | |
| A2 | "continuos" to "continuous" | R1, R2 | | [ ] | |
| A3 | "where involved" to "were involved" | R1, R2 | | [ ] | |
| A4 | "valuable info" to "valuable information" | R2 | | [ ] | |
| A5 | "Knoweldge Graph" to "Knowledge Graph" | R2 | | [ ] | |
| A6 | Reference [13] lists the same DOI twice | R1 | `.bib` | [ ] | |
| A7 | Reconcile data collection date with citation access dates | R1 | | [ ] | |
| A8 | Figure 1 has reversed or rotated text | R1 | | [ ] | May not be trivial depending on how the figure was produced. Check early. |

---

## Tier B, easy

| ID | Change | Raised by | Location | Status | Notes |
|---|---|---|---|---|---|
| B1 | Report asserted vs inferred counts separately. Recast "~200k typed relations" as 47,450 asserted and 188,862 after materialisation of inverse, symmetric and sub-property axioms | R2 (W5), R4 | Abstract, Introduction, LACK section stats | [ ] | Highest value per unit of effort. Three reviewers flagged it. |
| B2 | Narrow the COP30 conclusion from "these groups do not engage with the UNFCCC track" to absence from the examined records | R4 | Evaluation, case study | [ ] | |
| B3 | Calibrate the "actionable intelligence" claim: designed to support, not demonstrated to improve, practitioner workflows | R2 (W3), R4 | Abstract, Introduction, Discussion | [ ] | Title stays, but the surrounding prose must not overclaim. |
| B4 | Add explicit response rate (9 of 25, approx. 36%) and one or two sentences on self-selection bias | R1 (6), R2, R3, R4 | Evaluation, expert survey | [ ] | |
| B5 | Fix the survey sample size inconsistency and report item-level Ns. R4 notes that means of 4.62, 4.75 and 4.38 cannot be reconciled with N=9 | R4 | Evaluation, expert survey | [ ] | Blocked on the open question above. |
| B6 | Define terminology precisely at first use: relation, relation triple, fact, `associatedWith` connectivity | R2 (clarity) | LACK section | [ ] | Interacts with B1. Draft together. |
| B7 | Sharpen the ontology-circularity discussion. State the source-derived CQ trade-off explicitly and treat the survey's identification of political-sphere gaps as evidence of the blind spot | R1 (1) | LACK section, Discussion | [ ] | Honest framing is more persuasive here than defence. |
| B8 | Narrow the "first-of-its-kind" claim and add a short qualitative comparison with the UCL AI-Powered Climate Lobbying Database | R1 (7) | Related Work, Introduction | [ ] | |
| B9 | State that extraction evaluation measures precision and not recall, and that LobbyMap was not evaluated separately | R2 (W1, W2), R4 | Consolidated limitations paragraph | [ ] | Cheaper than the experiment and defuses most of R2's fundamental concerns. |
| B10 | State that NIL cases were not manually audited, so true absence cannot be distinguished from a pipeline miss. Narrow the surrounding claim | R1 (2), R4 | Consolidated limitations paragraph | [ ] | |
| B11 | Add confidence display and a correction or dispute mechanism to future work, with an explicit nod to reputational harm | R4 | Discussion and Outlook | [ ] | |

### Structural note

B9, B10 and the Tier D acknowledgements should share a single consolidated limitations paragraph rather than being scattered as hedges through the paper. Cheaper in space and more credible to read.

---

## Tier C, parked for review after A and B

Each depends on whether the underlying data is recoverable.

| ID | Change | Raised by | Data needed |
|---|---|---|---|
| C1 | Construction cost: wall-clock time, hardware, LLM calls, token and monetary cost, update cost | R2 (W4), R4 | Pipeline logs |
| C2 | Operational evidence: endpoint uptime, query volume, update frequency | R2 (W4) | Endpoint analytics |
| C3 | Sampling method for the 225-entity linking gold standard, plus breakdown by entity type and by linked/NIL outcome | R1 (5), R4 | Existing annotations |
| C4 | Breakdown of the 300-relation evaluation by relation type | R2 (W2), R4 | Existing annotation sheet |
| C5 | Inter-annotator agreement for the existing evaluation | R4 | Whether it was double-annotated |

---

## Tier D, deferred to future work

Acknowledge in the limitations paragraph, do not attempt.

| ID | Change | Raised by |
|---|---|---|
| D1 | End-to-end recall evaluation against manually annotated source pages | R2 (W1), R4 |
| D2 | Separate extraction evaluation for LobbyMap | R1 (4), R2 (W2), R4 |
| D3 | Baseline and ablation comparison for entity linking, e.g. ReFinED, or variants without LLM disambiguation and web-search fallback | R4 |
| D4 | Manual audit with precision and recall for the COP30 heuristic label matching | R1 (3), R4 |
| D5 | Sampling analysis of the 27,757 cross-source paths for meaningfulness | R1 (8) |
| D6 | Task-based user study measuring retrieval speed or investigative accuracy against a baseline workflow | R2 (W3) |
| D7 | Larger expert survey | R1 (6), R3 |

---

## Progress log

| Date | Items completed | Notes |
|---|---|---|
| | | |
