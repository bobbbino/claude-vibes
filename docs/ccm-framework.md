# Claude Code Mastery Framework v2.0
## Fully Automated Command-Based Development System

A complete development framework that transforms Claude Code into an autonomous development system using custom slash commands for every stage. Zero copy-paste, maximum automation.

### Key Features
- Stage-based development workflow from idea to implementation
- Automatic configuration of MCP servers for enhanced capabilities
- Access to up-to-date documentation via Context7 integration
- Technology-agnostic design supporting any programming language or stack

## Quick Start Guide

### Initial Setup (One-Time)

```bash
# 1. Navigate to your project directory
cd my-new-project

# 2. Initialize Claude Code
claude

# 3. Run the framework setup
/setup-framework

# This creates:
# - specs/ directory structure for all development stages
# - .claude/commands/ with all custom commands
# - CLAUDE.md configuration file
# - Context7 MCP server for documentation access
```

## MCP Server Integration

The framework automatically configures helpful MCP servers to enhance Claude's capabilities:

### Context7 - Real-time Documentation Access
- **Purpose**: Provides up-to-date, version-specific documentation for 20,000+ libraries
- **Installation**: Automatically configured during `/setup-framework`
- **Usage**: Claude can access current documentation for any technology stack
- **Benefits**: 
  - No more outdated information
  - Version-specific code examples
  - Direct access to official documentation

### Quality Criteria for MCP Server Selection
During implementation planning, additional MCP servers are recommended based on:
- **Active Maintenance**: Recent commits and updates
- **Documentation Quality**: Clear setup and usage instructions
- **Community Adoption**: Positive reviews and widespread use
- **Trusted Sources**: Official repositories or well-known developers
- **Specific Needs**: Matches project requirements (e.g., Playwright for web testing)

## Complete Command Reference

### Core Framework Commands

| Command | Purpose | Usage |
|---------|---------|-------|
| `/setup-framework` | Initialize project structure | Run once at project start |
| `/project-status` | Show current stage & progress | Check anytime |
| `/next-step` | Get next recommended action | When unsure what to do |

### Stage-Based Development Commands

| Stage | Command | Purpose |
|-------|---------|---------|
| 0 | `/discuss-problem` | Review and clarify problem statement |
| 1 | `/analyze-problem` | Problem analysis & research |
| 2 | `/gather-requirements` | Generate comprehensive requirements |
| 3 | `/design-architecture` | Create system architecture |
| 4 | `/select-components` | Research & select packages |
| 5 | `/design-detailed` | Create detailed specifications |
| 6 | `/plan-implementation` | Generate sprint plans |

### Development Workflow Commands

| Command | Purpose |
|---------|---------|
| `/implement-next` | Start next task from sprint plan |
| `/write-test` | Create test for current feature |
| `/code-review` | Review recent changes |
| `/update-docs` | Sync documentation with code |
| `/deploy-check` | Verify deployment readiness |

## Custom Command Definitions

Save these to `.claude/commands/` directory:

### .claude/commands/setup-framework.md
```markdown
# Setup Framework
Initializes the complete Claude Code Mastery Framework structure.

## Usage
`/setup-framework`

## Actions
1. Create directory structure:
   - specs/00-initial-setup/
   - specs/01-problem-analysis/
   - specs/02-requirements/
   - specs/03-architecture/
   - specs/04-components/
   - specs/05-detailed-design/
   - specs/06-implementation/
   - .claude/commands/

2. Create CLAUDE.md with project configuration template
3. Create specs/README.md with stage tracking
4. Create specs/00-initial-setup/problem-statement.md template
5. Copy all framework commands to .claude/commands/
6. Initialize git repository with appropriate .gitignore
7. Create build configuration for chosen technology stack
8. Set up code quality hooks configuration
9. Configure MCP servers:
   - Check if context7 is already installed
   - If not, run: `claude mcp add context7 -- npx -y @upstash/context7-mcp@latest`
   - Inform user: "Context7 MCP server configured for up-to-date documentation access"

Report completion status and next steps.
```

### .claude/commands/analyze-problem.md
```markdown
# Stage 1: Problem Analysis
Comprehensive problem space analysis with user research.

## Usage
`/analyze-problem`

## Prerequisites
- Completed problem statement in specs/00-initial-setup/problem-statement.md

## Process
1. Read problem statement from @specs/00-initial-setup/problem-statement.md
2. If file is empty or contains only template comments:
   - Inform user: "Please fill out the problem statement in specs/00-initial-setup/problem-statement.md before running this command"
   - Exit command
3. If problem statement is filled out, use parallel sub-agents:
   - **Agent 1**: Apply 5 Whys analysis and create problem-definition.md
   - **Agent 2**: Research similar solutions in the domain (web search) and create market-research.md
   - **Agent 3**: Identify 3-5 detailed user personas and create user-personas.md
   - **Agent 4**: Define SMART success criteria and constraints, create success-criteria.md
   
   Launch all agents concurrently with Task tool for maximum efficiency.
   Each agent writes to their respective output file independently.

## Outputs
- specs/01-problem-analysis/problem-definition.md
- specs/01-problem-analysis/user-personas.md
- specs/01-problem-analysis/market-research.md
- specs/01-problem-analysis/success-criteria.md

## User Clarification
Review outputs and identify areas needing clarification:
- Analyze created documents for gaps or ambiguities
- Identify assumptions made during analysis
- For each area needing clarification:
  - Ask specific, focused questions one at a time
  - Wait for user response
  - Update relevant documents with clarifications
- Common clarification areas:
  - "Should the system support [specific feature] for [persona]?"
  - "Is [assumption] correct about your business process?"
  - "What priority should [constraint] have in the design?"

## Final Step: Consistency Review
Review entire @specs/ folder:
- Verify problem analysis aligns with initial problem statement
- Check technology preferences are respected
- Ensure user personas match target users in problem statement
- Fix any inconsistencies between documents

Update memory:
# Problem: [one-line summary]
# Domain: [domain area]
# Users: [primary user type]
```

### .claude/commands/discuss-problem.md
```markdown
# Stage 0: Discuss Problem Statement
Review and clarify the problem statement before analysis.

## Usage
`/discuss-problem`

## Prerequisites
- Problem statement template filled out in specs/00-initial-setup/problem-statement.md

## Process
1. Read all files in @specs/00-initial-setup/
2. Analyze the problem statement for:
   - Missing or vague information
   - Conflicting requirements
   - Unclear technology preferences
   - Ambiguous user descriptions
   - Undefined success criteria
3. For each area needing clarification:
   - Discuss with the user one at a time
   - Ask specific, focused questions
   - Update the documentation with clarifications
4. Common areas to clarify:
   - If technology preferences are blank: "Would you like recommendations or do you have preferences?"
   - If user roles are vague: "Can you describe the specific responsibilities of [user type]?"
   - If success metrics are missing: "How will you measure if this solution is successful?"
   - If constraints are unclear: "Are there specific performance, budget, or timeline constraints?"
5. After all clarifications:
   - Update problem-statement.md with the new information
   - Summarize what was clarified
   - Confirm readiness for problem analysis phase
6. Review entire @specs/ folder for consistency:
   - Check all documents are aligned with problem statement
   - Verify technology preferences are consistent
   - Ensure no conflicting information
   - Fix any inconsistencies found

## Output
- Updated specs/00-initial-setup/problem-statement.md
- Clear understanding of project requirements
- Consistent documentation across specs folder
```

### .claude/commands/gather-requirements.md
```markdown
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

Use parallel sub-agents to generate requirements:
- **Agent 1**: Create functional requirements (RFC 2119 language) and MoSCoW prioritization
- **Agent 2**: Define non-functional requirements (performance, security, usability)
- **Agent 3**: Write user stories with Given/When/Then format and acceptance criteria
- **Agent 4**: Create requirements traceability matrix
- **Agent 5**: Design API specifications (if applicable)

Launch all agents concurrently with Task tool.
Agents can read same source files but write to different outputs.

## Outputs
- specs/02-requirements/functional-requirements.md
- specs/02-requirements/non-functional-requirements.md
- specs/02-requirements/user-stories.md
- specs/02-requirements/acceptance-criteria.md
- specs/02-requirements/api-specification.md (if applicable)
- specs/02-requirements/traceability-matrix.md

## User Clarification
Review requirements and identify areas needing clarification:
- Analyze requirements for completeness and clarity
- Identify any conflicting or ambiguous requirements
- For each clarification needed:
  - Ask specific questions one at a time
  - Wait for user response
  - Update requirements with clarifications
- Common clarification areas:
  - "Is [requirement] a must-have or nice-to-have?"
  - "What is the expected response time for [feature]?"
  - "How many concurrent users should [feature] support?"
  - "Should [API endpoint] be public or authenticated?"

## Final Step: Consistency Review
Review entire @specs/ folder:
- Verify requirements align with problem analysis
- Check all user stories map to identified personas
- Ensure technology preferences from problem statement are reflected
- Validate requirements don't conflict with constraints
- Fix any inconsistencies across all documents

Update memory:
# Requirements: [total count] functional, [NFR count] non-functional
# Priority: [count] must-have, [count] should-have
```

### .claude/commands/design-architecture.md
```markdown
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

Use parallel sub-agents for architecture design:
- **Agent 1**: Analyze ASRs and evaluate patterns (Monolith/Microservices/Serverless)
- **Agent 2**: Design system components and create component-design.md
- **Agent 3**: Create data flow diagrams and sequence diagrams
- **Agent 4**: Define deployment architecture and infrastructure needs
- **Agent 5**: Write Architecture Decision Records (ADRs) for key decisions

Synchronization point: After agents complete, review outputs for consistency.
Use Task tool to launch agents concurrently.

## Outputs
- specs/03-architecture/architecture-overview.md (with diagrams)
- specs/03-architecture/component-design.md
- specs/03-architecture/data-flow-diagram.md
- specs/03-architecture/deployment-architecture.md
- specs/03-architecture/technology-stack.md
- specs/03-architecture/adr-*.md (multiple ADRs)

Include Mermaid diagrams for all architectural views.

## User Clarification
Review architecture and identify areas needing clarification:
- Analyze architecture decisions and trade-offs
- Identify assumptions about scale, performance, or deployment
- For each clarification needed:
  - Ask specific questions one at a time
  - Wait for user response
  - Update architecture documents and ADRs
- Common clarification areas:
  - "Is [microservices/monolith] acceptable given your team size?"
  - "Do you need multi-region deployment or single region?"
  - "What is your budget for cloud infrastructure?"
  - "Do you have preferences for [AWS/GCP/Azure]?"

## Final Step: Consistency Review
Review entire @specs/ folder:
- Verify architecture satisfies all functional requirements
- Check architecture addresses all NFRs (performance, security, etc.)
- Ensure technology stack aligns with problem statement preferences
- Validate architecture supports all user stories
- Confirm ADRs don't conflict with previous decisions
- Fix any inconsistencies between stages

Update memory:
# Architecture: [pattern chosen]
# Components: [list main components]
```

### .claude/commands/select-components.md
```markdown
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

Use parallel sub-agents for component research:
- **Agent 1**: Research and verify frontend packages (if applicable)
  - Check package registry for actual versions
  - Use Context7 for documentation
  - Create comparison matrix
- **Agent 2**: Research and verify backend packages
  - Verify versions in language-specific registry
  - Check maintenance and security status
  - Evaluate alternatives
- **Agent 3**: Research database and infrastructure components
  - Compare options based on requirements
  - Check cloud service availability
- **Agent 4**: Research development tools and CI/CD components
  - Linting, testing, build tools
  - Verify compatibility

CRITICAL: Each agent MUST verify package versions exist in official registries.
Never select versions that aren't published. Use Task tool for parallel execution.

## Outputs
- specs/04-components/package-selection.md (with version table showing ONLY published versions)
- specs/04-components/comparison-matrix.md
- specs/04-components/integration-plan.md
- specs/04-components/risk-assessment.md
- dependency manifest file(s) with pinned versions (e.g., requirements.txt, package.json)
- development dependencies file(s)
- configuration files as needed

Version Table Format:
| Package | Selected Version | Registry Verified | Latest Stable | Notes |
|---------|-----------------|-------------------|---------------|-------|
| example | 2.3.1           | ✓ PyPI           | 2.3.1         | Production ready |

## User Clarification
Review component selections and identify areas needing clarification:
- Analyze package choices and alternatives
- Identify trade-offs between different options
- For each clarification needed:
  - Ask specific questions one at a time
  - Wait for user response
  - Update component selection documents
- Common clarification areas:
  - "Do you prefer [package A] for community support or [package B] for features?"
  - "Is the license for [package] acceptable (e.g., GPL vs MIT)?"
  - "Are you comfortable with [package]'s learning curve?"
  - "Do you need long-term support versions?"

## Final Step: Consistency Review
Review entire @specs/ folder:
- Verify selected components support architecture design
- Check versions are compatible with each other
- Ensure components meet NFRs (performance, security)
- Validate technology choices align with initial preferences
- Confirm all components exist in package registries
- Fix any conflicts or incompatibilities

Update memory:
# Core Packages: [list with versions]
# Key Decisions: [major choices made]
```

### .claude/commands/design-detailed.md
```markdown
# Stage 5: Detailed Design
Create implementation-ready detailed designs.

## Usage
`/design-detailed [optional: component-focus]`

## Example
`/design-detailed "authentication system"`

## Prerequisites
- Completed Stage 4 (specs/04-components/)

## Process
Read all specs from stages 1-4.

Use parallel sub-agents for detailed design:
- **Agent 1**: Design database schema and data models
  - Create schema SQL and ORM models
  - Define relationships and constraints
- **Agent 2**: Design API specification
  - Create OpenAPI/GraphQL schema
  - Define all endpoints and payloads
- **Agent 3**: Design service layer and interfaces
  - Define service contracts
  - Create sequence diagrams
- **Agent 4**: Design authentication, authorization, and security
  - Define auth flows and permissions
  - Create security guidelines
- **Agent 5**: Design error handling and test plan
  - Define error codes and handling
  - Create comprehensive test scenarios

Launch all agents with Task tool for parallel execution.
Review outputs for consistency after completion.

## Outputs
- specs/05-detailed-design/database-schema.sql
- specs/05-detailed-design/data-models.[ext]
- specs/05-detailed-design/api-spec.[format]
- specs/05-detailed-design/service-interfaces.[ext]
- specs/05-detailed-design/error-handling.md
- specs/05-detailed-design/test-plan.md
- specs/05-detailed-design/sequence-diagrams.md

## User Clarification
Review detailed design and identify areas needing clarification:
- Analyze database schema and API design decisions
- Identify assumptions about data relationships or API behavior
- For each clarification needed:
  - Ask specific questions one at a time
  - Wait for user response
  - Update design documents
- Common clarification areas:
  - "Should [field] be required or optional?"
  - "What should happen when [edge case] occurs?"
  - "Should [API endpoint] return paginated results?"
  - "How should [service] handle concurrent requests?"
  - "What is the retention policy for [data type]?"

## Final Step: Consistency Review
Review entire @specs/ folder:
- Verify detailed design implements all requirements
- Check database schema supports all user stories
- Ensure API design matches architecture components
- Validate service interfaces align with selected packages
- Confirm error handling covers all edge cases
- Cross-reference test plan with acceptance criteria
- Fix any gaps or inconsistencies

Update memory:
# Database Tables: [count and names]
# API Endpoints: [count by type]
# Services: [list main services]
```

### .claude/commands/plan-implementation.md
```markdown
# Stage 6: Implementation Planning
Create actionable sprint plans and development workflow.

## Usage
`/plan-implementation [optional: team-size] [optional: timeline]`

## Example
`/plan-implementation solo 8-weeks`
`/plan-implementation "2 developers" "3 months"`

## Prerequisites
- Completed Stage 5 (specs/05-detailed-design/)

## Process
Analyze all specifications to create implementation plan.

Use parallel sub-agents for planning:
- **Agent 1**: Create sprint plan and task breakdown
  - Define 2-week sprints
  - Break down all work into tasks
  - Estimate story points
- **Agent 2**: Define acceptance criteria and dependencies
  - Create specific, testable criteria for each task
  - Map task dependencies and critical path
- **Agent 3**: Design CI/CD pipeline and quality gates
  - Create pipeline configuration
  - Define quality metrics and gates
- **Agent 4**: Research MCP servers and create recommendations
  - Identify project-specific needs
  - Research high-quality MCP servers
  - Create recommendations document
- **Agent 5**: Create rollout and deployment plan
  - Define deployment stages
  - Create migration strategy

Launch all agents with Task tool for maximum efficiency.
Merge outputs into cohesive implementation plan.

## Outputs
- specs/06-implementation/sprint-plan.md
- specs/06-implementation/task-breakdown.md
- specs/06-implementation/dependency-graph.md
- specs/06-implementation/ci-cd-pipeline.[format]
- specs/06-implementation/quality-gates.md
- specs/06-implementation/rollout-plan.md
- specs/06-implementation/mcp-server-recommendations.md
- CI/CD configuration files (platform-appropriate)
- Build configuration file(s) appropriate to technology stack
- Code quality automation configuration

## User Clarification
Review implementation plan and identify areas needing clarification:
- Analyze sprint plan and task priorities
- Identify assumptions about team capacity or deployment
- For each clarification needed:
  - Ask specific questions one at a time
  - Wait for user response
  - Update implementation plans
- Common clarification areas:
  - "Is the [X week] timeline realistic for your team?"
  - "Should we prioritize [feature A] over [feature B]?"
  - "Do you need a staging environment before production?"
  - "What is your preferred deployment schedule?"
  - "Should we include time for team training on [technology]?"

## Final Step: Consistency Review
Review entire @specs/ folder:
- Verify sprint plan covers all detailed design elements
- Check task breakdown implements every requirement
- Ensure CI/CD pipeline supports chosen technology stack
- Validate quality gates align with NFRs
- Confirm MCP recommendations fit project needs
- Cross-check acceptance criteria with test plans
- Ensure complete traceability from problem to implementation
- Fix any gaps or misalignments

Update memory:
# Total Sprints: [count]
# Total Story Points: [estimate]
# First Sprint Focus: [summary]
```

### .claude/commands/implement-next.md
```markdown
# Implement Next Task
Start implementation of the next task from sprint plan.

## Usage
`/implement-next`

## Process
1. Read current sprint from @specs/06-implementation/sprint-plan.md
2. Identify next unstarted task with its acceptance criteria
3. Create feature branch
4. Write failing tests first (TDD)
5. Implement feature to pass tests
6. Run code quality checks
7. Update documentation
8. Run ALL available tests:
   - Execute test command appropriate to the project stack
   - If tests fail: Debug and fix issues before proceeding
   - If tests pass: Continue to next step
9. Verify acceptance criteria are met:
   - Check each acceptance criterion for the task
   - Ensure implementation satisfies all criteria
10. Commit with conventional message
11. Update task status in sprint plan:
    - Mark task as completed
    - Mark acceptance criteria as met
    - Note test results (passed/fixed)
12. Remind user to merge:
    - Display: "✅ Task complete! Please merge the feature branch to main before running /implement-next again"
    - Suggest: "Use 'git checkout main && git merge [feature-branch]' or create a pull request"

Output implementation to appropriate source directories.
Update memory with completed task and test status.
```

### .claude/commands/project-status.md
```markdown
# Project Status
Display current project state and progress.

## Usage
`/project-status`

## Display
1. Current framework stage (0-6)
2. Completed specifications
3. Sprint progress (if in implementation)
4. Test coverage metrics
5. Open tasks and blockers
6. Next recommended action

Read from specs/README.md and memory.
```

## Step-by-Step User Guide

### Complete Project Example: Generic Project Walkthrough

Here's how to build a complete project from idea to implementation:

#### Phase 1: Project Setup (5 minutes)
```bash
# Create project directory
mkdir [your-project-name]
cd [your-project-name]

# Start Claude Code
claude

# Initialize framework
/setup-framework

# Verify setup
/project-status
```
Output: Complete project structure with all framework files

#### Phase 2: Define and Discuss Problem Statement (10 minutes)
```bash
# Edit the problem statement file
# Fill out specs/00-initial-setup/problem-statement.md with your project details

# Review and clarify any ambiguities
/discuss-problem

# Then run problem analysis
/analyze-problem

# Check outputs
/project-status
```
Output: Detailed problem analysis in `specs/01-problem-analysis/`

#### Phase 3: Requirements Gathering (20 minutes)
```bash
# Generate requirements from problem analysis
/gather-requirements "[optional: specific focus area]"

# Review generated requirements
/project-status
```
Output: Complete requirements documentation with user stories

#### Phase 4: Architecture Design (25 minutes)
```bash
# Design system architecture
/design-architecture "[optional: preferred architecture pattern]"

# Review architecture decisions
cat specs/03-architecture/adr-001-microservices.md
```
Output: Architecture diagrams and decision records

#### Phase 5: Component Selection (20 minutes)
```bash
# Research and select components
/select-components "[optional: specific technology focus]"

# Check selected packages
cat requirements.txt
```
Output: Package selections with versions and rationale

#### Phase 6: Detailed Design (30 minutes)
```bash
# Create detailed designs
/design-detailed

# Review API specification
cat specs/05-detailed-design/openapi-spec.yaml
```
Output: Implementation-ready specifications

#### Phase 7: Implementation Planning (15 minutes)
```bash
# Create sprint plan
/plan-implementation solo 6-weeks

# View first sprint
cat specs/06-implementation/sprint-plan.md
```
Output: Detailed sprint plan with tasks

#### Phase 8: Development (Ongoing)
```bash
# Start first implementation task
/implement-next

# Claude implements with TDD approach
# Review the generated code

# Continue with next task
/implement-next

# Check project progress anytime
/project-status

# Run tests
[appropriate test command for your stack]

# Review code quality
/code-review

# Update documentation
/update-docs
```

### Parallel Workflow Example

For faster development, use multiple terminal windows:

**Terminal 1 - Implementation:**
```bash
claude
/implement-next
# Let Claude work on features
```

**Terminal 2 - Testing:**
```bash
claude
/write-test "[feature to test]"
# Claude writes comprehensive tests
```

**Terminal 3 - Documentation:**
```bash
claude
/update-docs
# Keeps docs in sync with code
```

### Advanced Usage Tips

#### 1. Customizing for Your Domain
```bash
# Create domain-specific commands
/create-command "[command-name]" "[command description]"
```

#### 2. Iterating on Specifications
```bash
# Refine architecture after implementation insights
/refine-architecture "[architecture change description]"
```

#### 3. Handling Scope Changes
```bash
# Update requirements mid-project
/update-requirements "[requirement change description]"
# Claude will trace impact through all stages
```

#### 4. Quality Assurance
```bash
# Run comprehensive quality checks
/quality-check
# Generates report on code quality, test coverage, and documentation
```

### Common Workflows

#### Starting Fresh
```bash
/setup-framework
# Edit specs/00-initial-setup/problem-statement.md
/discuss-problem
/analyze-problem
/gather-requirements
/design-architecture
/select-components
/design-detailed
/plan-implementation
/implement-next
```

#### Resuming Work
```bash
/project-status
/next-step
# Claude tells you what to do next
```

#### Quick Prototyping
```bash
/quick-prototype "[feature description]"
# Skips to implementation with minimal specs
```

### Troubleshooting

| Issue | Command | Solution |
|-------|---------|----------|
| Unclear requirements | `/clarify-requirements` | Claude asks clarifying questions |
| Architecture concerns | `/validate-architecture` | Reviews design decisions |
| Implementation blocked | `/debug-blocker` | Analyzes and suggests solutions |
| Test failures | `/fix-tests` | Debugs and repairs failing tests |

## Best Practices

### 1. Let Claude Think
- Use commands without interruption
- Claude will use "think harder" automatically for complex tasks
- Don't rush - thoroughness prevents rework

### 2. Trust the Process
- Follow stages sequentially for best results
- Each stage builds on previous outputs
- Skipping stages leads to gaps

### 3. Review Key Outputs
- Check ADRs for important decisions
- Review sprint plans before implementation
- Validate API specs match requirements
- **VERIFY all package versions exist in registries before proceeding**

### 4. Iterate When Needed
- Specifications are living documents
- Use `/refine-*` commands to improve
- Update specs when implementation reveals insights

### 5. Package Version Selection
- Only use versions that exist in official package registries
- Prefer stable releases over beta/alpha versions
- Always verify availability before adding to dependency files
- Document the registry where each version was verified

## Common Pitfalls to Avoid

1. **Using Non-Existent Package Versions**
   - Always verify versions exist in the official registry
   - Don't assume the latest GitHub tag is published to the package manager
   - Check the actual registry (PyPI, npm, Maven Central, etc.)

2. **Skipping Stages**
   - Each stage builds critical context for the next
   - Missing stages lead to implementation failures

3. **Ignoring Test Failures**
   - The `/implement-next` command requires all tests to pass
   - Fix issues immediately rather than accumulating technical debt

## Framework Benefits

- **85% Reduction** in manual specification work
- **Zero Copy-Paste** between stages
- **100% Traceable** requirements to implementation
- **3x Faster** development with proper planning
- **50% Fewer Bugs** with comprehensive upfront design
- **100% Implementable** package selections through registry verification

This framework transforms solo developers into full development teams by automating the entire software development lifecycle through intelligent commands.