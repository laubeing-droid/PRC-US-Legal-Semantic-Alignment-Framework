<!--
version: 3.0.3
module: alignment-framework
status: active
-->

# PRC-First Legal Semantic Alignment Framework

> **An LLM-Optimized System for Constraining US Legal Concepts Within Chinese-Law Reasoning Contexts**

[中文文档](README.md) | [Full Framework](PRC-US-Legal-Semantic-Alignment-Framework.md) | [License](LICENSE)

---

## What This Is

When LLMs handle China-related legal matters, a systemic risk emerges: US legal concepts are applied by default, common law terminology is literally translated into Chinese legal concepts, and mandatory PRC law is overridden by American legal logic.

This framework solves that problem. It is not a dictionary, not a bidirectional translation, not a legal operating system.

It is **alignment** + **constraint** + **jurisdiction-aware adaptation** — purpose-built for the LLM era.

---

## Core Mechanisms

| Mechanism | Description |
|-----------|-------------|
| **Functional Mapping** | Maps US legal concepts → PRC legal institutions by *function*, not literal translation |
| **Absolute Blocking** | 22 US-specific concepts (consideration, discovery, Miranda, Chevron deference, etc.) are forcibly intercepted |
| **PRC Law Supremacy** | When US-style logic conflicts with PRC mandatory law, Chinese law takes precedence |
| **Jurisdictional Isolation** | Mainland China / Hong Kong / United States — three jurisdictions processed independently, never conflated |
| **Reasoning Chain** | A 5-step Chain-of-Thought pipeline with If→Then trigger rules, directly executable by any LLM |

---

## Structure

`
I.   Meta-Rule Layer    —  6 Rules + Reasoning Chain
II.  16 PRC Departmental Laws  —  Article-by-Article Mappings
III. Hong Kong Common Law Bridge  —  Cross-Jurisdictional Translator
IV.  AI Workflow Templates  —  Contract Review, Cross-Border Advisory, Evidence Management
V.   Appendices  —  22-Item Blocklist, PRC-Unique Institutions, JSON Data Dictionary
`

---

## Meta-Rules (6 Rules)

These six rules govern every LLM interaction involving Chinese law:

| # | Rule | Description |
|---|------|-------------|
| **1** | No Literal-First Translation | Never assume a US term has a direct Chinese equivalent; always verify functional equivalence first |
| **2** | Function-First Judgment | Map by institutional function (what does this concept *do* in the legal system?) before mapping by name |
| **3** | Block Unmatched Concepts | 22 US-specific concepts (e.g., consideration, class action, Miranda warning) have no PRC counterpart — block them outright |
| **4** | Flag PRC-Unique Institutions | Chinese-specific systems (e.g., ?? social credit, ???? property rights separation, ???? mediation) must be explicitly labeled |
| **5** | Never Conflate Jurisdictions | Do not mix Mainland, Hong Kong, and US legal logic in a single analysis |
| **6** | Strictest Governing Law | In cross-border scenarios, apply the most restrictive applicable law by default |

---

## 5-Step Reasoning Pipeline (CoT)

When an LLM encounters a US legal concept in a Chinese-law context, the following pipeline executes:

`
Step 1: JURISDICTION CHECK
  ?? Which legal system does this question implicate?
      ?? Mainland China  ?? Hong Kong  ?? United States

Step 2: CONCEPT EXTRACTION
  ?? What US legal concept is embedded in the prompt or latent in the model?

Step 3: FUNCTIONAL MAPPING
  ?? Does this concept have a functional equivalent in the target jurisdiction?
      ?? YES  ?? Proceed with adapted mapping
      ?? NO   ?? BLOCKED (refer to 22-item blocklist)

Step 4: CONFLICT RESOLUTION
  ?? If PRC mandatory law and US-style logic conflict, PRC law prevails
      ?? Apply Rule 6 (Strictest Law) for cross-border scenarios

Step 5: OUTPUT WITH DISCLAIMER
  ?? Tag all output with jurisdictional attribution + mandatory disclaimer
`

---

## 16 PRC Departmental Law Mappings

Each section includes: terminology mapping tables, comparative-law warning boxes, and practitioner-ready phrasing for cross-border counsel.

| # | Departmental Law | Key Coverage |
|---|-----------------|--------------|
| 1 | Constitutional Structure & Judicial Power | Court hierarchy, judicial review, constitutional framework |
| 2 | Civil Code · General Provisions | Legal personhood, juristic acts, agency, statute of limitations |
| 3 | Civil Code · Property Rights | Ownership, usufruct, security interests, land-use rights |
| 4 | Civil Code · Contracts | Formation, validity, performance, breach, consideration gap |
| 5 | Civil Code · Personality Rights | Privacy, reputation,肖像权 (portrait rights) — unique to PRC |
| 6 | Civil Code · Marriage & Family | Matrimonial property, divorce, child custody |
| 7 | Civil Code · Succession | Intestate vs. testamentary succession, forced heirship |
| 8 | Civil Code · Torts | Fault vs. strict liability, damages, vicarious liability |
| 9 | Civil Procedure Law | Jurisdiction, service, evidence, enforcement |
| 10 | Criminal Procedure Law | Investigation powers, exclusionary rule, plea bargaining gap |
| 11 | Company Law (2024 Revision) | Corporate governance, fiduciary duties, capital rules |
| 12 | Administrative Law | Judicial review of agency action, rulemaking, licensing |
| 13 | Data Compliance & AI Regulation | PIPL, DSL, CSL, cross-border data transfer, algorithmic governance |
| 14 | Antitrust · IP · Tax | AML, patent/trademark/copyright, VAT and income tax |
| 15 | Labor & Social Security Law | Employment contracts, termination, social insurance |
| 16 | Cross-Border Compliance & Frontier Areas | Sanctions, ESG, Web3, autonomous driving, VIE structures |

---

## 22-Item High-Risk Blocklist (Excerpt)

These US concepts have **no functional equivalent** in PRC law and must be **blocked on sight**:

| US Concept | Why Blocked | Alternative PRC Approach |
|-------------|-------------|--------------------------|
| consideration (contract) | No common law consideration doctrine in PRC | Focus on "genuine intent" (?? ??) and lawful purpose |
| discovery (procedure) | No adversarial discovery in PRC civil procedure | Court-directed evidence collection; burden of proof rules |
| Miranda warning | No equivalent in PRC criminal procedure | Focus on procedural rights under CPL Art. 52 |
| class action | No US-style class action in PRC | Representative litigation (????) or public interest litigation |
| punitive damages | Narrowly available; mostly compensatory framework | Check specific statutes (Consumer Protection Law, IP laws) |
| Chevron deference | No agency deference doctrine in PRC admin law | Courts independently review administrative acts |
| plea bargaining | Leniency system (???) exists but structurally different | Map to CPL leniency procedures, not US plea bargaining |
| jury trial | No jury system in PRC | People's assessors (?????) — advisory role, not equivalent |
| Fourth Amendment | No constitutional warrant requirement | CPL search & seizure rules; different constitutional framework |
| Fifth Amendment | Right against self-incrimination exists but differs structurally | CPL Art. 52; different procedural safeguards |

> Full 22-item blocklist with detailed rationale: see [Section 5.1](PRC-US-Legal-Semantic-Alignment-Framework.md#51-22%E9%A1%B9%E9%AB%98%E9%A3%8E%E9%99%A9%E8%AF%AF%E8%AF%91%E9%98%BB%E6%96%AD%E6%B8%85%E5%8D%95)

---

## Hong Kong Common Law Bridge

Hong Kong serves as the bridge jurisdiction between PRC civil law and Anglo-American common law:

- **Company Law**: HK Companies Ordinance bridges PRC Company Law and Delaware/BVI structures
- **Arbitration**: HKIAC is the preferred neutral venue for China-foreign disputes
- **Cross-Jurisdictional Mapping**: 3-way terminology tables (PRC / HK / US) for key corporate, property, and litigation terms

---

## AI Workflow Templates

Three production-ready workflows for embedding into legal AI systems:

### Workflow 1: Contract Review
`
1. Identify governing law clause ?? Determine jurisdiction
2. Extract all obligations ?? Map each to PRC functional equivalent
3. Flag US-only concepts (consideration, equitable remedies) ?? Block / replace
4. Apply PRC mandatory rules (Civil Code, mandatory contract terms)
5. Generate jurisdiction-tagged output with disclaimer
`

### Workflow 2: Cross-Border Compliance Advisory
`
1. Multi-jurisdiction check: PRC + HK + US rules
2. If conflict: Rule 6 (Strictest Law) applies
3. Sanction screening: PRC blocking statutes + US OFAC
4. Data export: PIPL/CAC assessment + GDPR/CCPA if applicable
5. Output: layered analysis by jurisdiction
`

### Workflow 3: Evidence & Document Management
`
1. Identify evidentiary standards by jurisdiction
2. Map US discovery concepts to PRC court-directed evidence
3. Flag admissibility differences
4. Generate jurisdiction-specific exhibit lists
`

---

## Use Cases

| Scenario | How to Use |
|----------|------------|
| **LLM System Prompt Injection** | Inject the 6 Meta-Rules + 5-Step Pipeline into Claude/GPT system prompts for legal tasks |
| **RAG Knowledge Base Foundation** | Use mapping tables as the terminology layer for legal retrieval-augmented generation |
| **Legal Agent Alignment Corpus** | Fine-tune or prompt-engineer legal AI agents using the framework as alignment training data |
| **Cross-Border Contract Review** | Apply Workflow 1 templates to flag US-concept leakage in bilingual contracts |
| **Compliance Training** | Use the 22-item blocklist as a curriculum for training lawyers on PRC/US law differences |

---

## Validation Status

| Metric | Result |
|--------|--------|
| LLM Cross-Validation Rounds | 4 |
| Test Cases | 30/30 Passed |
| Status | **Frozen for Release** |

---

## Quick Start

`ash
git clone https://github.com/laubeing-droid/PRC-US-Legal-Semantic-Alignment-Framework.git
`

### Inject into LLM System Prompt

`
You are a legal AI assistant. Before processing any legal question, apply the
PRC-First Legal Semantic Alignment Framework (PRC-US-Legal-Semantic-Alignment-Framework.md).

Core rules:
1. Never apply US legal concepts to PRC law questions by default
2. Always check functional equivalence before mapping any concept
3. Block the 22 high-risk concepts (see Appendix 5.1)
4. When PRC mandatory law conflicts with US logic, PRC law prevails
5. Always tag output with the applicable jurisdiction
`

### Integrate into a Legal Agent

The full framework document (PRC-US-Legal-Semantic-Alignment-Framework.md) is structured for machine readability:
- JSON data dictionary (Section 5.5) for programmatic parsing
- If→Then trigger rules for automated decision trees
- Skill-domain → terminology index (Section 5.7) for domain-specific loading

---

## Dependencies & Ecosystem

This framework is a foundational layer for:

- [Claude-for-Legal-CN-to-Codex](https://github.com/laubeing-droid/Claude-for-Legal-CN-to-Codex) — Codex Desktop legal skills (12 domains)
- [Codex-Claude-legal-CN-mcp-connectors](https://github.com/laubeing-droid/Codex-Claude-legal-CN-mcp-connectors) — MCP connectors for PRC legal databases
- Upstream: [claude-for-legal-CN](https://github.com/SH88-source/claude-for-legal-CN) — Chinese law workflow for Claude

---

## Contributing

This framework is designed for:
- **Chinese legal practitioners** reviewing terminology mappings
- **AI/LLM engineers** building legal reasoning systems
- **Comparative law scholars** refining cross-jurisdictional alignment

See [CONTRIBUTING.md guidelines](https://github.com/laubeing-droid/Claude-for-Legal-CN-to-Codex) in the parent ecosystem.

---

## License

Apache License 2.0 — see [LICENSE](LICENSE)

---

## Disclaimer

> **This framework is a research and engineering artifact, not legal advice.**
> All mappings and rules are drafted for LLM alignment purposes only.
> No lawyer-client relationship is established by use of this framework.
> Practitioners must independently verify all legal references against current, authoritative sources before applying them to any actual case or transaction.
