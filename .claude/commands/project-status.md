# Project Status
Display current project state and progress based on framework mode.

## Usage
`/project-status`

## Process
1. Read CLAUDE.md to determine framework mode
2. Display appropriate status based on mode

## Fast-Track Mode Display
```
🚀 Claude Vibes Fast-Track Status
═══════════════════════════════════

Mode: Fast-Track (AI-Powered)
Started: [timestamp]
Time Elapsed: [duration]

Progress:
✅ MVP defined: [title if set]
✅ Stack selected: [stack if chosen]
⏳ Features implemented: [count]
⏳ Deployed: [status]

Current Stack:
- Framework: [if selected]
- Database: [if selected]  
- Deployment: [if selected]

Implemented Features:
1. ✅ [Feature 1]
2. ✅ [Feature 2]
3. ⏳ [In progress]

Next Steps:
→ /fast-implement "[next feature]"
→ /project-status (check progress)
→ /deploy (when ready)

Background AI Status:
📝 Documentation: [generating/complete]
🧪 Tests: [writing/ready]
📋 Requirements: [inferring/documented]
```

## Traditional Mode Display  
```
📋 Claude Vibes Traditional Framework Status
═══════════════════════════════════════════

Mode: Traditional (7-Stage)
Current Stage: [N] - [Stage Name]
Progress: [====>    ] 40%

Completed Stages:
✅ Stage 0: Initial Setup
✅ Stage 1: Problem Analysis
⏳ Stage 2: Requirements Gathering
⏳ Stage 3: Architecture Design
⏳ Stage 4: Component Selection
⏳ Stage 5: Detailed Design
⏳ Stage 6: Implementation Planning

Current Stage Details:
- Documents completed: [list]
- Documents pending: [list]
- Blockers: [if any]

Sprint Progress: (if in implementation)
Sprint 1/4: Story Points [8/21]
- ✅ Task 1: Authentication
- ⏳ Task 2: User Dashboard
- ⏳ Task 3: API Integration

Next Steps:
→ /[current-stage-command]
→ /next-step (for guidance)
```

## Mode Switching Detection
If mode not set in CLAUDE.md:
```
⚠️  Framework mode not detected!

This project appears to be:
□ Fast-Track (rapid MVP development)
□ Traditional (comprehensive planning)

Initialize with:
→ /setup-framework (fast-track default)
→ /setup-framework --traditional
```

## Additional Metrics (Both Modes)
- Git Status: [commits ahead/behind]
- Test Coverage: [if available]
- Code Quality: [linting status]
- Dependencies: [up-to-date/outdated]

## Quick Actions
Based on current status, suggest 3 most relevant commands:
1. Most likely next action
2. Alternative action
3. Help or clarification command

## Memory Integration
Read from:
- CLAUDE.md for mode and status
- specs/README.md for traditional progress
- specs/fast-track/* for fast-track progress
- Git for commit history
- Package files for dependency status