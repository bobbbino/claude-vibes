# Fast Define
Rapid problem definition for MVP development - get clarity in 5 minutes.

## Usage
`/fast-define "[problem or app idea]"`

## Examples
`/fast-define "need to track expenses across multiple currencies"`
`/fast-define "help remote teams collaborate on documents"`
`/fast-define "automate social media posting for small businesses"`

## Process
1. **Parse Input** (10 seconds)
   - Extract core problem
   - Identify domain (productivity, finance, social, etc.)
   - Detect key features mentioned

2. **Generate Minimal Definition** (2 minutes)
   Create specs/fast-track/mvp-definition.md with:
   ```markdown
   # MVP Definition
   
   ## Problem Statement
   [One sentence describing the core problem]
   
   ## Target User
   [Single primary user type]
   
   ## Core Feature
   [The ONE feature that solves 80% of the problem]
   
   ## Success Metric
   [Single measurable outcome]
   
   ## Nice-to-Have Features
   - [Feature 2]
   - [Feature 3]
   (To be added after MVP validation)
   ```

3. **Interactive Clarification** (2-3 minutes)
   Ask maximum 3 questions if needed:
   - "Is this for personal use or teams?"
   - "Do you need user accounts?"  
   - "What's the main action users will take?"

## Key Principles
- **One Core Feature**: Ruthlessly focus on single value prop
- **Defer Complexity**: List other features but don't build yet
- **Clear Success**: One metric that proves it works
- **Speed Over Perfection**: Can always refine later

## Output Example
```markdown
# MVP Definition

## Problem Statement
Small business owners waste hours manually posting to multiple social media platforms.

## Target User  
Small business owner with <10 employees

## Core Feature
Schedule posts to Twitter, Facebook, and Instagram from one dashboard

## Success Metric
User saves 2+ hours per week on social media management

## Nice-to-Have Features
- Analytics dashboard
- AI content suggestions
- Team collaboration
- Content calendar view
```

## Stack Hints
Based on problem domain, suggest stack for next step:
- **Consumer app**: Next.js + Supabase
- **Business tool**: FastAPI + PostgreSQL  
- **Content/Media**: Astro + Cloudinary
- **Real-time**: Socket.io + Redis
- **AI-powered**: FastAPI + Langchain

## Next Step
After definition complete:
```
✅ MVP defined! Next steps:
→ /fast-stack (select technology)
→ /turbo-mvp (skip to full setup)
```

## Validation
Ensure definition has:
- [ ] Specific problem (not vague)
- [ ] Clear user (not "everyone")
- [ ] Single feature (not feature list)
- [ ] Measurable success (not "make it better")

## Memory Update
Update CLAUDE.md with:
```markdown
## Fast Track Status
- [x] MVP defined
- [ ] Stack selected
- [ ] First feature implemented
- [ ] Deployed

## MVP Summary
Problem: [one line]
User: [user type]
Core Feature: [feature]
```