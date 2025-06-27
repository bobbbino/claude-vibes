# Stage 3: Architecture Design
Create comprehensive system architecture with visual diagrams.

## Usage
`/design-architecture [optional: architecture-style]`

## Example
`/design-architecture microservices`
`/design-architecture "event-driven serverless"`

## Prerequisites
- Completed Stage 2 (specs/02-requirements/)

## Process
Read @specs/02-requirements/*.md

Ultrathink to design:
1. Analyze architecturally significant requirements (ASRs)
2. Evaluate architecture patterns:
   - Monolith vs Microservices vs Serverless
   - Layered vs Hexagonal vs Event-driven
3. Design system components and boundaries
4. Create data flow and sequence diagrams
5. Define integration points and APIs
6. Address cross-cutting concerns (security, logging, monitoring)
7. Create Architecture Decision Records (ADRs)

## Outputs
- specs/03-architecture/architecture-overview.md (with diagrams)
- specs/03-architecture/component-design.md
- specs/03-architecture/data-flow-diagram.md
- specs/03-architecture/deployment-architecture.md
- specs/03-architecture/technology-stack.md
- specs/03-architecture/adr-*.md (multiple ADRs)

Include Mermaid diagrams for all architectural views.

Update memory:
# Architecture: [pattern chosen]
# Components: [list main components]