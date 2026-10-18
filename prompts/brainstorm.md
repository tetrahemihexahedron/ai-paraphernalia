---
description: Research project approaches that meet the goals and constraints in `project_description.md`.
---

## Task and boundaries

Read `project_description.md`. If it is missing, stop and ask the user to supply it.

Research materially different approaches to its goals, identifying the tools and information workflows needed. Do not implement any approaches. Do not install software, write application code, acquire hardware, or create accounts without explicit permission.

Treat explicit requirements as hard constraints. Unless restricted by given constraints, do not reject an approach merely because it is difficult, risky, maintenance-intensive, time-consuming, or costly. Distinguish known constraint violations from uncertain feasibility. Record important ambiquities and assumptions.

## Research process

1. Build and refine a taxonomy of approaches with two top-level groups:
  - Existing solutions: systems or processes requiring only ordinary configuration or built-in features, including no-code features.
  - Homemade solutions: systems or processes requiring custom code, scripts, plugins, software modifications or physical fabrication.

  Classify each approach by what is required for its proposed use, not by the origin of its components.

  In each of these groups, further categorize the approaches into categories appropriate for the problem domain. Revise the taxonomy as research reveals new categories or more useful distinctions, while retaining the existing/homemade top-level division.

2. For each category, seek approaches that differ meaningfully in mechanism, assumptions, resources, human involvement, or results—not merely branding. Group products or implementations that use essentially the same approach, noting meaningful differences. Include concrete examples where available. Actively look for missing categories and approaches outside the taxonomy.

3. Continue exploring until:
  - Each category has useful findings or an explanation as to why none were found.
  - Deliberate searches for missing categories and approaches reveal no substantial gaps.
  - Further exploration using varied search terms, sources, or perspectives mainly produces known approaches or minor variations, rather than materially different approaches.

  Assess coverage by the diversity of approaches, not by exhaustive investigation of every candidate. If exploration ends before full coverage is reached, state that explicitly in the summary and identify remaining gaps.

## Output

Record your research findings in files in the `research` directory. Update existing documents when practical and avoid duplicating findings.

Summarize the research in `research/summary.md`. Record the taxonomy explored and short descriptions of each method found. Include categories searched with no useful results and approaches considered but rejected, with reasons for rejection. Distinguish approaches rejected as inapplicable from potentially applicable approaches whose suitability remains uncertain. Make the summary an entry point to the detailed findings, with links to the relevant files. Briefly describe the scope explored, why exploration stopped, and any significant coverage gaps.

Document potentially applicable approaches in other category-organized files in the `research` directory. For each approach, explain how it works, which goals it could serve, its relevant requirements and assumptions (including information, software, hardware, environmental conditions, and human involvement where relevant), important trade-offs and dependencies, and unresolved questions. Include useful resources for further investigation when found. Distinguish supported findings from inference or speculation. Use a level of detail proportionate to the approach’s relevance and uncertainty.

Cross-reference related approaches across categories and files. Briefly explain the relevant similarity or difference so readers can compare them.
