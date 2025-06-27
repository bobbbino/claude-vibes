# Stage 4: Component Selection
Research and select implementation components and packages.

## Usage
`/select-components [optional: specific-area]`

## Example
`/select-components "focus on authentication libraries"`

## Prerequisites
- Completed Stage 3 (specs/03-architecture/)

## Process
Read @specs/03-architecture/technology-stack.md

Research extensively (use web search):
1. Find latest stable versions of all packages
2. Verify Python 3.11+ compatibility
3. Check maintenance status (last commit < 3 months)
4. Compare alternatives with decision matrix
5. Verify security advisories
6. Check license compatibility
7. Design integration approach
8. Plan fallback strategies

## Outputs
- specs/04-components/package-selection.md (with version table)
- specs/04-components/comparison-matrix.md
- specs/04-components/integration-plan.md
- specs/04-components/risk-assessment.md
- requirements.txt (pinned versions)
- requirements-dev.txt
- package.json (if frontend)

Update memory:
# Core Packages: [list with versions]
# Key Decisions: [major choices made]