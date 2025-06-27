# Stage 2: Requirements Gathering
Transform problem analysis into detailed requirements.

## Usage
`/gather-requirements [optional: requirement-focus]`

## Example
`/gather-requirements "focus on API requirements"`

## Prerequisites
- Completed Stage 1 (specs/01-problem-analysis/)

## Process
Read @specs/01-problem-analysis/*.md

Ultrathink to generate:
1. Functional requirements (RFC 2119 language)
2. MoSCoW prioritization matrix
3. Non-functional requirements (performance, security, usability)
4. User stories with Given/When/Then format
5. Acceptance criteria for each story
6. Requirements traceability matrix
7. API specifications if applicable

## Outputs
- specs/02-requirements/functional-requirements.md
- specs/02-requirements/non-functional-requirements.md
- specs/02-requirements/user-stories.md
- specs/02-requirements/acceptance-criteria.md
- specs/02-requirements/api-specification.md (if applicable)
- specs/02-requirements/traceability-matrix.md

Update memory:
# Requirements: [total count] functional, [NFR count] non-functional
# Priority: [count] must-have, [count] should-have