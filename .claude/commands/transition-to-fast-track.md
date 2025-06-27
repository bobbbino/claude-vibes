# Transition to Fast-Track
Smoothly transition from traditional stages to fast-track implementation.

## Usage
`/transition-to-fast-track`

## Purpose
This command helps you switch from traditional planning to fast-track implementation at any stage, consolidating your traditional work and suggesting the best fast-track entry point.

## Process

### 1. Analyze Current State
- Read current stage from CLAUDE.md
- Scan completed traditional documents
- Identify what can be leveraged for fast-track

### 2. Stage-Specific Transitions

#### From Stage 0 (Initial Setup)
```
✅ Found: Problem statement
→ Suggests: /fast-define to create MVP-focused definition
→ Or: /turbo-mvp if problem is clear enough
```

#### From Stage 1 (Problem Analysis)
```
✅ Found: Problem analysis, user personas, success criteria
→ Consolidates into: Quick MVP definition
→ Suggests: /fast-stack based on identified constraints
```

#### From Stage 2 (Requirements)
```
✅ Found: Functional requirements, user stories
→ Extracts: Core feature for MVP
→ Suggests: /fast-stack with requirements context
→ Then: /fast-implement with highest priority feature
```

#### From Stage 3 (Architecture)
```
✅ Found: Architecture design, technology decisions
→ Maps to: Fast-track stack selection
→ Suggests: /fast-implement to start building
→ Skip: /fast-stack (already have tech choices)
```

#### From Stage 4 (Components)
```
✅ Found: Selected packages and versions
→ Uses: Existing selections for fast implementation
→ Suggests: /fast-implement with verified components
```

#### From Stage 5 (Detailed Design)
```
✅ Found: Database schema, API specs
→ Leverages: Designs for immediate implementation
→ Suggests: /fast-implement with design guidance
```

### 3. Consolidation Process

Creates `specs/fast-track/transition-summary.md`:
```markdown
# Transition to Fast-Track Summary

## Traditional Work Completed
- ✅ Stage 0: [Summary of problem]
- ✅ Stage 1: [Key insights]
- ✅ Stage 2: [Core requirements]

## Extracted for Fast-Track
### MVP Definition
[Consolidated from traditional docs]

### Core Feature
[Highest priority from requirements]

### Technology Stack
[From architecture/components if available]

## Recommended Fast-Track Path
1. Start with: /fast-implement "[core feature]"
2. Then: /fast-implement "[next feature]"
3. Finally: /deploy

## Preserved Traditional Work
All traditional documents remain in specs/ for reference
```

### 4. Update Configuration

Updates CLAUDE.md:
```markdown
## Framework Mode
Mode: hybrid
Transitioned: [timestamp]
Traditional Stages Completed: 0, 1, 2
Fast-Track Stages: 3, 4, 5, 6

## Transition Point
From: Stage 2 (Requirements)
To: Fast-Track Implementation
Reason: Requirements clear, need rapid delivery
```

### 5. Smart Recommendations

Based on what's completed, provides specific guidance:

#### Minimal Completion (Stage 0-1)
```
💡 Recommendation: Run /fast-stack first
You have basic problem understanding but need technology decisions.
```

#### Good Foundation (Stage 0-2)
```
💡 Recommendation: Jump to /fast-implement
Requirements are clear. Stack will be selected based on your needs.
Suggested first feature: [extracted from requirements]
```

#### Extensive Planning (Stage 0-4)
```
💡 Recommendation: Direct to /fast-implement
All planning done! Let's build quickly.
Your selected stack: [from components]
First implementation: [from sprint plan if exists]
```

## Interactive Confirmation

```
🎭 Transition to Fast-Track

Traditional work completed:
✅ Problem Analysis: Comprehensive
✅ Requirements: 15 user stories defined
✅ Architecture: Microservices designed

This will:
1. Preserve all traditional documentation
2. Extract MVP focus from requirements
3. Enable rapid implementation
4. Skip remaining traditional stages

Continue? (y/n): _
```

## Success Message

```
🚀 Transitioned to Fast-Track!

Your traditional planning is preserved and accessible.

Quick summary created at:
→ specs/fast-track/transition-summary.md

Start building with:
→ /fast-implement "user authentication"

Based on your requirements, this is the highest priority feature.

Tips:
• Use /project-status to see hybrid progress
• Traditional docs remain available for reference
• Can still /formalize-with-traditional later
```

## Special Cases

### No Traditional Work
If called with no traditional stages complete:
```
⚠️  No traditional work to transition from!

Start with:
→ /turbo-mvp "your idea"
Or:
→ /fast-define for quick problem definition
```

### Already in Fast-Track
If already in fast-track mode:
```
✅ Already in Fast-Track mode!

Continue with:
→ /fast-implement "next feature"
```

### Partial Stage Completion
If current traditional stage is incomplete:
```
⚠️  Stage 2 (Requirements) is incomplete

Options:
1. Complete it first with /gather-requirements
2. Transition anyway (may miss important details)
3. Cancel transition

Choose (1-3): _
```

## Benefits
1. **No Lost Work**: All traditional planning is preserved
2. **Smart Extraction**: Pulls relevant info for fast-track
3. **Clear Path**: Specific next steps based on what's done
4. **Flexibility**: Can return to traditional for specific stages later