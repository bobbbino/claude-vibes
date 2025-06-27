# Show Modes
Explain the two Claude Vibes framework modes and help users choose.

## Usage
`/show-modes`

## Display
```
🚀 Claude Vibes Framework Modes
═══════════════════════════════════════

Claude Vibes offers two development modes:

┌─────────────────────────────────────────────────────────┐
│ 🚀 FAST-TRACK MODE (Default)                            │
│ "Code in 5 minutes with AI-powered planning"           │
├─────────────────────────────────────────────────────────┤
│ Perfect for:                                            │
│ • Rapid prototypes and MVPs                             │
│ • Hackathons and experiments                            │
│ • Solo developers or small teams                        │
│ • When you need to validate ideas quickly               │
│                                                         │
│ How it works:                                           │
│ • Start coding immediately                              │
│ • AI handles planning in background                     │
│ • Progressive enhancement as you go                     │
│ • Deploy first, refine later                            │
│                                                         │
│ Commands:                                               │
│ • /turbo-mvp "idea" - All-in-one start                 │
│ • /fast-define - Quick problem definition               │
│ • /fast-stack - Instant tech selection                  │
│ • /fast-implement - Direct to coding                    │
│                                                         │
│ Time to first feature: 5 minutes                       │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│ 📋 TRADITIONAL MODE                                     │
│ "Comprehensive planning for production systems"         │
├─────────────────────────────────────────────────────────┤
│ Perfect for:                                            │
│ • Enterprise applications                               │
│ • Large teams (5+ developers)                           │
│ • When requirements are clear upfront                   │
│ • Regulated industries (finance, healthcare)            │
│                                                         │
│ How it works:                                           │
│ • 7-stage systematic workflow                           │
│ • Thorough analysis before coding                       │
│ • Comprehensive documentation                           │
│ • Architectural decision records                        │
│                                                         │
│ Stages:                                                 │
│ 0. Initial Setup & Problem Statement                    │
│ 1. Problem Analysis & Research                          │
│ 2. Requirements Gathering                               │
│ 3. Architecture Design                                  │
│ 4. Component Selection                                  │
│ 5. Detailed Design                                      │
│ 6. Implementation Planning                              │
│                                                         │
│ Time to first feature: 2-3 days                        │
└─────────────────────────────────────────────────────────┘

## Mode Comparison

| Aspect | Fast-Track | Traditional |
|--------|------------|-------------|
| Planning | Minimal upfront | Comprehensive |
| Documentation | Generated as-needed | Complete upfront |
| Time to code | 5 minutes | 2-3 days |
| Best for | MVPs, experiments | Production systems |
| Team size | 1-3 developers | 5+ developers |
| Flexibility | Very high | Structured |
| Technical debt | Acceptable initially | Minimized |
| Stakeholders | Few/none | Multiple |

## Current Project Mode
[Read from CLAUDE.md and display]

## How to Choose

Start with Fast-Track if:
✓ You're exploring an idea
✓ Need to show something quickly
✓ Requirements are unclear
✓ Working solo or small team
✓ Building an MVP

Use Traditional if:
✓ Requirements are well-defined
✓ Building for enterprise
✓ Have compliance needs
✓ Large team coordination
✓ Long-term maintenance critical

## Switching Modes

From Fast-Track → Traditional:
→ /enable-traditional
(Preserves all work, adds structure)

From Traditional → Fast-Track:
→ /enable-fast-track
(Simplifies workflow, keeps docs)

From scratch:
→ /setup-framework (fast-track default)
→ /setup-framework --traditional

## Philosophy

Fast-Track: "Ship fast, learn faster"
Traditional: "Plan once, build right"

Both modes lead to production-ready software.
The difference is the path you take to get there.
```

## Interactive Mode
If user hasn't initialized yet, add:
```
👋 Ready to start? Here's how:

For Fast-Track (recommended for most projects):
→ /setup-framework

For Traditional (comprehensive planning):
→ /setup-framework --traditional

Not sure? Start with Fast-Track - you can always switch later!
```