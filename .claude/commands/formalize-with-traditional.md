# Formalize with Traditional
Generate traditional documentation from fast-track implementation for stakeholders or compliance.

## Usage
`/formalize-with-traditional [stage]`
`/formalize-with-traditional all`

## Examples
`/formalize-with-traditional architecture`
`/formalize-with-traditional requirements`
`/formalize-with-traditional "requirements,architecture"`

## Purpose
After building quickly with fast-track, generate comprehensive traditional documentation by analyzing your implementation. Perfect for:
- Investor presentations
- Enterprise stakeholders
- Compliance requirements
- Team onboarding
- Technical audits

## Supported Stages

### Stage 1: Problem Analysis
`/formalize-with-traditional problem-analysis`

Generates from implementation:
- Problem definition from actual solution
- User personas from implemented features
- Market analysis from technology choices
- Success criteria from delivered functionality

Output: `specs/01-problem-analysis/` (generated from code)

### Stage 2: Requirements
`/formalize-with-traditional requirements`

Generates from implementation:
- Functional requirements from existing features
- Non-functional requirements from architecture
- User stories from implemented workflows
- API specifications from actual endpoints
- Acceptance criteria from test cases

Output: `specs/02-requirements/` (reverse-engineered)

### Stage 3: Architecture
`/formalize-with-traditional architecture`

Generates from implementation:
- System architecture from code structure
- Component diagrams from module organization
- Data flow from actual integrations
- Deployment architecture from configurations
- ADRs from technology choices

Output: `specs/03-architecture/` with diagrams

### Stage 4: Component Selection
`/formalize-with-traditional components`

Generates from implementation:
- Package inventory from dependencies
- Version documentation
- Component comparison (retrospective)
- Integration documentation
- License analysis

Output: `specs/04-components/` with justifications

### Stage 5: Detailed Design
`/formalize-with-traditional design`

Generates from implementation:
- Database schema from migrations/models
- API documentation from routes
- Service interfaces from code
- Sequence diagrams from call patterns
- Error handling patterns

Output: `specs/05-detailed-design/` with full specs

## Process

### 1. Code Analysis
Analyzes your implementation to understand:
- Project structure
- Technology stack
- Feature set
- Architecture patterns
- Business logic

### 2. Smart Generation
For each requested stage:

```
🔍 Analyzing implementation...
✓ Found 12 API endpoints
✓ Identified 5 core features
✓ Detected PostgreSQL + Redis
✓ Recognized MVC pattern

📝 Generating Stage 3 (Architecture)...
✓ Creating system overview
✓ Generating component diagram
✓ Documenting data flows
✓ Writing ADRs for key decisions
```

### 3. Quality Enhancement
- Adds professional language
- Creates comprehensive diagrams
- Includes industry best practices
- Provides rationale for decisions

### 4. Stakeholder-Ready Output
Generated documents include:
- Executive summaries
- Technical details
- Visual diagrams
- Decision rationales
- Risk assessments

## Example Outputs

### Generated Architecture Document
```markdown
# System Architecture

## Executive Summary
The system implements a microservices architecture with React frontend and Node.js backend services, chosen for rapid development and scalability.

## Architecture Overview
[Mermaid diagram generated from code structure]

## Key Decisions
1. **Microservices**: Enables independent scaling
2. **PostgreSQL**: ACID compliance for financial data
3. **Redis**: Session management and caching
4. **Docker**: Consistent deployment across environments

## Component Description
[Detailed descriptions extracted from code]
```

### Generated Requirements Document
```markdown
# System Requirements

## Functional Requirements
Based on implemented functionality:

FR1: User Authentication
- Implementation: JWT with refresh tokens
- Features: Login, logout, password reset
- Security: bcrypt hashing, rate limiting

FR2: Transaction Processing
- Implementation: Async queue processing
- Features: Create, validate, process
- Performance: 1000 TPS achieved
```

## Formalize All
`/formalize-with-traditional all`

Generates complete traditional documentation suite:
1. Problem Analysis (from solution)
2. Requirements (from features)
3. Architecture (from structure)
4. Components (from dependencies)
5. Design (from implementation)
6. Sprint Plan (retrospective)

Time estimate: 15-30 minutes for full generation

## Interactive Options

```
📚 Formalize with Traditional Documentation

What would you like to formalize?
1. Problem Analysis & Requirements (Stages 1-2)
2. Architecture & Design (Stages 3-5)
3. Specific stage: ___
4. Everything (all stages)

Choose (1-4): _

For whom is this documentation?
A. Internal team
B. Investors/stakeholders
C. Compliance/audit
D. Open source community

Choose (A-D): _
```

## Benefits

1. **Time Savings**: Generate docs in minutes vs days
2. **Accuracy**: Documentation matches implementation exactly
3. **Completeness**: Nothing missed since it's from code
4. **Professional**: Stakeholder-ready output
5. **Flexible**: Generate only what you need

## Post-Generation

After generating traditional docs:
```
✅ Traditional documentation generated!

Created documents in:
→ specs/03-architecture/
  - architecture-overview.md
  - component-diagram.md
  - deployment-architecture.md
  - adr-001-microservices.md
  - adr-002-database-choice.md

Next steps:
• Review generated documents
• Customize for your audience
• Add any missing context
• Share with stakeholders

Tip: Use /update-docs to keep these in sync
```

## Warning Messages

### No Implementation Found
```
⚠️  No implementation found to formalize!

Start building with:
→ /turbo-mvp "your idea"
→ /fast-implement "feature"
```

### Partial Implementation
```
⚠️  Limited implementation found

Can generate:
✓ Basic architecture (from structure)
✓ Partial requirements (from 3 features)
✗ Detailed design (need more code)

Continue anyway? (y/n): _
```

## Philosophy
"Build first, document later" - Generate beautiful documentation from working code when stakeholders need it, not before.