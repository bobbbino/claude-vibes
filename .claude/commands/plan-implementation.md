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
Analyze all specifications to create:
1. Work breakdown structure (WBS)
2. Sprint planning with 2-week iterations
3. Task dependencies and critical path
4. Story point estimation
5. Acceptance criteria per task
6. CI/CD pipeline design
7. Quality gates and metrics
8. Rollout and migration plan

## Outputs
- specs/06-implementation/sprint-plan.md
- specs/06-implementation/task-breakdown.md
- specs/06-implementation/dependency-graph.md
- specs/06-implementation/ci-cd-pipeline.yaml
- specs/06-implementation/quality-gates.md
- specs/06-implementation/rollout-plan.md
- .github/workflows/ci.yml
- Makefile (with all tasks)
- .pre-commit-config.yaml

Update memory:
# Total Sprints: [count]
# Total Story Points: [estimate]
# First Sprint Focus: [summary]