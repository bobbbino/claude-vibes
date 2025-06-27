# Use Traditional For
Configure specific stages to use traditional approach in hybrid mode.

## Usage
`/use-traditional-for "[stage(s)]"`

## Examples
`/use-traditional-for "problem-analysis"`
`/use-traditional-for "requirements,architecture"`
`/use-traditional-for "0,1,2"` (using stage numbers)
`/use-traditional-for "all-planning"` (stages 0-5)

## Stage Reference
- Stage 0: Initial Setup (problem statement)
- Stage 1: Problem Analysis 
- Stage 2: Requirements Gathering
- Stage 3: Architecture Design
- Stage 4: Component Selection
- Stage 5: Detailed Design
- Stage 6: Implementation Planning

## Process

### 1. Parse Stage Selection
Accepts multiple formats:
- Stage names: "problem-analysis", "requirements"
- Stage numbers: "0", "1", "2"
- Ranges: "0-2", "planning" (0-5)
- Lists: "analysis,requirements,architecture"

### 2. Validate Configuration
Checks for:
- Valid stage identifiers
- Logical dependencies
- Existing progress compatibility

### 3. Update Configuration
Updates CLAUDE.md:
```markdown
## Framework Mode
Mode: hybrid
Stage Configuration:
- Stage 0: traditional ✓
- Stage 1: traditional ✓
- Stage 2: traditional ✓
- Stage 3: fast-track
- Stage 4: fast-track
- Stage 5: fast-track
- Stage 6: fast-track
```

### 4. Provide Guidance
Shows recommended workflow:
```
✅ Hybrid configuration updated!

Traditional stages: 0, 1, 2
Fast-track stages: 3, 4, 5, 6

Recommended workflow:
1. Start with /discuss-problem
2. Continue with /analyze-problem
3. Then /gather-requirements
4. Transition with /transition-to-fast-track
5. Continue with /fast-implement
```

## Common Patterns

### Pattern 1: Thorough Planning
```bash
/use-traditional-for "0-2"
/use-fast-track-for "3-6"
# Result: Comprehensive analysis, rapid build
```

### Pattern 2: Regulatory Compliance
```bash
/use-traditional-for "all-planning"
/use-fast-track-for "implementation"
# Result: Full documentation, flexible coding
```

### Pattern 3: Technical Deep Dive
```bash
/use-traditional-for "architecture,components"
# Result: Careful technical decisions
```

## Smart Suggestions

Based on stage selection, provides advice:

### Heavy Traditional (4+ stages)
```
💡 Consider full traditional mode?
You've selected 5 traditional stages. 
Maybe: /enable-traditional instead?
```

### Only Implementation Traditional
```
⚠️  Unusual configuration
Traditional implementation with fast planning is uncommon.
Consider reversing: planning traditional, implementation fast?
```

### Good Balance
```
✅ Excellent configuration!
Traditional planning (0-2) + Fast implementation (3-6)
This gives you solid foundation with rapid delivery.
```

## Stage Dependencies

Warns about dependencies:
```
⚠️  Dependency Warning

Stage 3 (Architecture) works best when Stage 2 (Requirements) 
is also traditional. Consider:
/use-traditional-for "requirements,architecture"
```

## Validation Examples

### Valid Configurations
- ✅ Traditional: 0-2, Fast: 3-6
- ✅ Traditional: 1-3, Fast: 0,4-6  
- ✅ Traditional: all, Fast: none
- ✅ Traditional: 2,3,4, Fast: others

### Invalid/Warned Configurations
- ⚠️  Skipping Stage 0 entirely
- ⚠️  Only Stage 5 traditional (needs context)
- ⚠️  Random mix without clear transitions

## Integration with Other Commands

After configuration:
- `/project-status` - Shows hybrid configuration
- `/next-step` - Recommends based on mode
- `/transition-to-fast-track` - When ready to switch

## Bulk Configurations

### Preset: Startup
```bash
/use-traditional-for "startup"
# Sets: Traditional 0-1, Fast 2-6
```

### Preset: Enterprise
```bash
/use-traditional-for "enterprise"  
# Sets: Traditional 0-4, Fast 5-6
```

### Preset: Experiment
```bash
/use-traditional-for "minimal"
# Sets: Traditional 0 only, Fast 1-6
```

## Success Message
```
✅ Traditional stages configured!

Your hybrid workflow:
📋 Traditional: Problem Analysis, Requirements
🚀 Fast-Track: Architecture → Implementation

This configuration is perfect for:
• Having clear requirements before building
• Maintaining development speed
• Creating documentation when needed

Start with: /analyze-problem
```

## Error Handling

### No Hybrid Mode
```
⚠️  Not in hybrid mode!

Current mode: fast-track

To use hybrid configuration:
1. /setup-framework --hybrid (fresh start)
2. /enable-hybrid (convert current project)
```

### Invalid Stage
```
❌ Invalid stage: "deployment"

Valid stages:
- problem-analysis (or 1)
- requirements (or 2)
- architecture (or 3)
- components (or 4)
- design (or 5)
- implementation (or 6)
```

## Philosophy
Configure exactly the rigor you need - comprehensive where it matters, fast where it doesn't.