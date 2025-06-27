# Hybrid Mode Configuration
Configure which stages use traditional vs fast-track approaches for maximum flexibility.

## Usage
`/hybrid-mode` - Interactive configuration
`/hybrid-mode --show` - Display current configuration

## Process

### Interactive Configuration
When run without flags, presents an interactive configuration:

```
🎭 Claude Vibes Hybrid Mode Configuration
════════════════════════════════════════

Configure each stage to use either Traditional or Fast-Track approach:

Stage 0: Initial Setup & Problem Definition
Current: [not configured]
Options:
  1. Traditional - Comprehensive problem statement
  2. Fast-Track - Quick MVP definition
  3. Skip - Start at later stage
Choose (1-3): _

Stage 1: Problem Analysis
Current: [not configured]
Options:
  1. Traditional - Deep analysis with user research
  2. Fast-Track - AI-powered quick analysis
  3. Skip - Use simple problem definition
Choose (1-3): _

[Continue for all stages...]
```

### Stage Mapping

| Stage | Traditional Approach | Fast-Track Approach |
|-------|---------------------|-------------------|
| 0 | Problem statement template | `/fast-define` |
| 1 | `/analyze-problem` | AI background analysis |
| 2 | `/gather-requirements` | Inferred from implementation |
| 3 | `/design-architecture` | `/fast-stack` selection |
| 4 | `/select-components` | Pre-configured stacks |
| 5 | `/design-detailed` | Generated from code |
| 6 | `/plan-implementation` | `/fast-implement` |

### Common Hybrid Workflows

#### 1. Thorough Planning + Fast Implementation
```
Stage 0-2: Traditional (comprehensive analysis)
Stage 3-6: Fast-Track (rapid building)
```
Best for: Projects with complex requirements but need quick delivery

#### 2. Fast MVP + Formal Documentation
```
Stage 0-6: Fast-Track (build quickly)
Later: Formalize specific stages with traditional
```
Best for: Startups needing quick validation then investor docs

#### 3. Selective Traditional
```
Stage 0: Fast-Track
Stage 1-2: Traditional (requirements crucial)
Stage 3-6: Fast-Track
```
Best for: When only specific stages need rigor

### Configuration Storage
Updates CLAUDE.md with:
```markdown
## Framework Mode
Mode: hybrid
Stage Configuration:
- Stage 0: traditional
- Stage 1: traditional  
- Stage 2: traditional
- Stage 3: fast-track
- Stage 4: fast-track
- Stage 5: fast-track
- Stage 6: fast-track

## Hybrid Workflow
Type: Thorough Planning + Fast Implementation
Configured: [timestamp]
```

### Validation Rules
1. **Dependencies**: Some stages depend on previous stages
   - Can't skip Stage 0 entirely
   - Fast-track Stage 3-4 work well together
   - Traditional Stage 1-2 provide better input for any Stage 3

2. **Transitions**: Smooth handoffs between modes
   - Traditional → Fast-Track: Use `/transition-to-fast-track`
   - Fast-Track → Traditional: Use `/formalize-with-traditional`

3. **Recommendations**:
   - If Stage 1-2 are traditional, consider traditional Stage 3
   - If starting fast-track, can formalize any stage later
   - Hybrid works best with clear transition points

## Display Current Configuration
When run with --show flag:
```
🎭 Current Hybrid Configuration
════════════════════════════════

Mode: Hybrid
Type: Custom Configuration

Stage Configuration:
✅ Stage 0: Traditional - Problem statement complete
✅ Stage 1: Traditional - Analysis complete  
⏳ Stage 2: Traditional - In progress
⏳ Stage 3: Fast-Track - Pending
⏳ Stage 4: Fast-Track - Pending
⏳ Stage 5: Fast-Track - Pending
⏳ Stage 6: Fast-Track - Pending

Next Step: Complete /gather-requirements
Then: /transition-to-fast-track for rapid implementation
```

## Workflow Optimization
Based on configuration, suggests:
1. Optimal transition points
2. Commands to use for each stage
3. Potential time savings
4. Risk considerations

## Examples

### Example 1: Enterprise Startup
```bash
/hybrid-mode
# Choose: Traditional for 0-2, Fast-track for 3-6
# Result: Solid foundation with rapid execution
```

### Example 2: Regulated Industry
```bash
/hybrid-mode
# Choose: Traditional for all except Stage 6
# Result: Full documentation with some implementation flexibility
```

### Example 3: Experimental Project
```bash
/hybrid-mode  
# Choose: Fast-track for 0-3, Traditional for 4-5, Fast-track for 6
# Result: Quick start, careful technical design, fast building
```

## Error Handling
- Warns about risky configurations
- Suggests better alternatives
- Validates dependencies
- Allows override with confirmation

## Next Steps
After configuration:
1. Start with first configured stage
2. Use `/project-status` to track hybrid progress
3. Use `/next-step` for mode-aware guidance