# Use Fast-Track For
Configure specific stages to use fast-track approach in hybrid mode.

## Usage
`/use-fast-track-for "[stage(s)]"`

## Examples
`/use-fast-track-for "implementation"`
`/use-fast-track-for "architecture,components,implementation"`
`/use-fast-track-for "3,4,5,6"` (using stage numbers)
`/use-fast-track-for "all-building"` (stages 3-6)

## Stage Reference
- Stage 0: Initial Setup → `/fast-define`
- Stage 1: Problem Analysis → AI-powered analysis
- Stage 2: Requirements → Inferred from implementation
- Stage 3: Architecture → `/fast-stack`
- Stage 4: Components → Pre-configured stacks
- Stage 5: Design → Generated from code
- Stage 6: Implementation → `/fast-implement`

## Process

### 1. Parse Stage Selection
Accepts multiple formats:
- Stage names: "architecture", "implementation"
- Stage numbers: "3", "4", "5", "6"
- Ranges: "3-6", "building" (3-6)
- Lists: "architecture,components,design"

### 2. Validate Configuration
Checks for:
- Valid stage identifiers
- Practical fast-track applications
- Smooth transitions from traditional

### 3. Update Configuration
Updates CLAUDE.md:
```markdown
## Framework Mode
Mode: hybrid
Stage Configuration:
- Stage 0: traditional
- Stage 1: traditional
- Stage 2: traditional
- Stage 3: fast-track ✓
- Stage 4: fast-track ✓
- Stage 5: fast-track ✓
- Stage 6: fast-track ✓
```

### 4. Provide Guidance
Shows optimized workflow:
```
✅ Hybrid configuration updated!

Traditional stages: 0, 1, 2
Fast-track stages: 3, 4, 5, 6

Your workflow:
1. Complete traditional planning
2. Use /transition-to-fast-track
3. Jump to /fast-stack for tech selection
4. Start with /fast-implement

Time saved: ~2 weeks of planning!
```

## Common Patterns

### Pattern 1: Fast Building
```bash
/use-traditional-for "0-2"
/use-fast-track-for "3-6"
# Result: Know what to build, build it fast
```

### Pattern 2: Rapid Prototype
```bash
/use-fast-track-for "all"
# Result: Pure fast-track (consider using default mode?)
```

### Pattern 3: Skip Heavy Design
```bash
/use-traditional-for "0-3"
/use-fast-track-for "4-6"
# Result: Clear architecture, flexible implementation
```

## Fast-Track Benefits by Stage

### Stage 3: Architecture (Fast-Track)
- **Traditional**: 2-3 days of diagrams and decisions
- **Fast-Track**: 5 minutes with `/fast-stack`
- **Benefit**: Pre-validated architectures

### Stage 4: Components (Fast-Track)
- **Traditional**: Research every package
- **Fast-Track**: Curated, compatible sets
- **Benefit**: No version conflicts

### Stage 5: Design (Fast-Track)
- **Traditional**: Detailed specs upfront
- **Fast-Track**: Generate from code
- **Benefit**: Specs match reality

### Stage 6: Implementation (Fast-Track)
- **Traditional**: Sprint planning
- **Fast-Track**: Build feature by feature
- **Benefit**: Ship in hours, not weeks

## Smart Suggestions

### Optimal Fast-Track Usage
```
💡 Perfect configuration!
Using fast-track for stages 3-6 saves maximum time
while keeping important planning traditional.
```

### Consider Full Fast-Track
```
💡 Using fast-track for 6 of 7 stages
Consider: /setup-framework (pure fast-track)?
You'll still have all fast-track benefits.
```

### Unusual but Valid
```
⚠️  Fast-track planning, traditional build
This is uncommon but valid for:
- Learning projects
- Proof of concepts
- When implementation needs rigor
```

## Integration Examples

### After Traditional Requirements
```bash
# Completed: Traditional stages 0-2
/use-fast-track-for "building"
/transition-to-fast-track
# → Jump directly to /fast-implement
```

### Mixed Approach
```bash
# Want fast start but careful architecture
/use-fast-track-for "0,1,2"
/use-traditional-for "3"
/use-fast-track-for "4,5,6"
```

## Validation Warnings

### Dependencies
```
⚠️  Consider dependencies

Fast-track Stage 4 (Components) works best with
fast-track Stage 3 (Architecture) for pre-validated stacks.
```

### Formalization Reminder
```
💡 Using fast-track for requirements?

You can formalize later with:
/formalize-with-traditional requirements
```

## Success Message
```
🚀 Fast-track stages configured!

Your hybrid workflow:
📋 Traditional: Problem Analysis
🚀 Fast-Track: Everything else!

Benefits:
• Start building in 30 minutes
• AI handles planning in background  
• Can formalize any stage later

Next: Complete /analyze-problem
Then: /transition-to-fast-track
```

## Time Savings Calculator

Shows estimated time savings:
```
⏱️  Time Savings Estimate

Traditional time for stages 3-6: ~2 weeks
Fast-track time for stages 3-6: ~2 hours
Time saved: 13.5 days (96% faster!)

Start saving time with: /transition-to-fast-track
```

## Error Handling

### Invalid Fast-Track Stage
```
⚠️  Stage 0 less suitable for fast-track

Stage 0 (Initial Setup) is usually just filling
a template. Fast-track doesn't save much time here.

Consider starting with Stage 1 for fast-track.
```

### Already Configured
```
✓ Stages 3-6 already set to fast-track!

Current configuration:
- Traditional: 0, 1, 2
- Fast-track: 3, 4, 5, 6

No changes needed.
```

## Philosophy
Use fast-track where speed matters most - typically building and implementation stages where AI can accelerate delivery without sacrificing quality.