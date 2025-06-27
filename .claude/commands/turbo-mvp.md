# Turbo MVP
All-in-one command to go from idea to coding in 5 minutes using AI-Powered Fast Track.

## Usage
`/turbo-mvp "[app description]" [optional: preferred stack]`

## Examples
`/turbo-mvp "expense tracker with charts"`
`/turbo-mvp "task manager for teams" "React + Node.js"`
`/turbo-mvp "ai chatbot interface" "Next.js + FastAPI"`

## Process
This command runs multiple parallel processes to get you coding immediately:

### Immediate Actions (0-30 seconds)
1. Parse app description and extract core features
2. Show initial message: "🚀 Starting your [app type] with AI-Powered Fast Track..."
3. Create initial project structure
4. Select appropriate stack (or use preference if provided)

### Parallel AI Processing (runs in background)
While you start coding, AI agents work simultaneously:

**Agent 1: Problem Definition**
- Generates concise problem statement
- Identifies target users
- Defines success metrics
- Writes to specs/fast-track/problem-definition.md

**Agent 2: Stack Selection & Setup**
- Selects optimal technology stack
- Installs dependencies
- Creates boilerplate configuration
- Writes to specs/fast-track/stack-selection.md

**Agent 3: Initial Implementation**
- Creates project structure
- Generates first endpoint/component
- Sets up basic routing
- Creates placeholder UI (if applicable)

**Agent 4: Test Generation**
- Creates initial test suite
- Generates test cases for first feature
- Sets up testing framework

**Agent 5: Deployment Preparation**
- Configures deployment settings
- Creates CI/CD pipeline
- Prepares environment variables

### User Experience Flow
```
0:00 - Command entered
0:05 - "Stack selected: [Express + React + SQLite]"
0:10 - "Creating project structure..."
0:20 - "First endpoint ready: POST /api/[resource]"
0:30 - "✅ Ready to code! Start with: /fast-implement '[first feature]'"

Meanwhile in background:
- Requirements being generated
- Architecture documented  
- Tests being written
- Deployment configured
```

### Progressive Disclosure
As AI completes background tasks, notify user:
```
[1 min] ✓ Problem analysis complete
[2 min] ✓ Requirements generated  
[3 min] ✓ Test suite ready
[4 min] ✓ Deployment pipeline configured
[5 min] ✓ Full documentation available
```

## Stack Selection Logic
If no stack specified, select based on app type:
- **Web App**: Next.js + PostgreSQL + Tailwind
- **API Service**: FastAPI + PostgreSQL + Redis  
- **Mobile Backend**: Express + MongoDB + Push notifications
- **Real-time App**: Node.js + Socket.io + Redis
- **AI/ML Service**: FastAPI + Celery + Redis
- **Static Site**: Astro + Markdown + Netlify

## Output Structure
```
project/
├── src/
│   ├── api/        (or server/ for backend)
│   ├── components/ (for frontend)
│   └── lib/        (shared utilities)
├── tests/
│   └── [first-feature].test.[ext]
├── specs/
│   ├── fast-track/
│   │   ├── mvp-definition.md
│   │   └── stack-selection.md
│   └── generated/  (AI continues here)
├── package.json    (or requirements.txt)
├── .env.example
├── .gitignore
├── README.md       (minimal, expands over time)
└── CLAUDE.md       (fast-track configuration)
```

## Error Handling
- If description too vague: Ask clarifying question
- If stack conflicts: Suggest alternatives
- If dependencies fail: Fall back to simpler stack

## Next Steps
After completion, suggest:
1. `/fast-implement "[next feature]"`
2. `/project-status` to see progress
3. `/fast-deploy` when ready to ship

## Memory Update
Update CLAUDE.md with:
- App type and description
- Selected stack
- First feature implemented
- Timestamp of MVP creation