# Fast Stack
Instant technology stack selection with zero analysis paralysis.

## Usage
`/fast-stack [optional: constraints]`

## Examples
`/fast-stack`
`/fast-stack "must use Python"`
`/fast-stack "deploy to Vercel"`
`/fast-stack "enterprise security"`

## Process
1. **Read MVP Definition** (5 seconds)
   - Load specs/fast-track/mvp-definition.md
   - Extract problem domain and core feature
   - Note any technical requirements

2. **Present Top 3 Options** (30 seconds)
   Based on MVP type, show 3 pre-configured stacks:
   
   ```
   🚀 Fast Stack Selection
   
   Based on your [app type], here are 3 instant options:
   
   1️⃣ **Lightning Fast** (Recommended)
      → Next.js + Supabase + Vercel
      → One-click auth, database, and deploy
      → Perfect for: Rapid prototypes
      → Deploy time: 5 minutes
   
   2️⃣ **Maximum Control**
      → FastAPI + PostgreSQL + Docker  
      → Full backend control, REST API
      → Perfect for: Data-heavy apps
      → Deploy time: 15 minutes
   
   3️⃣ **Simple & Stable**
      → Express + SQLite + Railway
      → Minimal dependencies, file-based DB
      → Perfect for: Simple CRUD apps
      → Deploy time: 10 minutes
   
   Choose (1-3) or 'custom': _
   ```

3. **Instant Setup** (1-2 minutes)
   Once selected:
   - Create package.json/requirements.txt
   - Install dependencies in background
   - Generate boilerplate configuration
   - Create example .env file
   - Set up folder structure

## Pre-Configured Stacks

### Web Applications
1. **Next.js Fullstack**: Next.js 14 + Prisma + PostgreSQL + Tailwind + Vercel
2. **Python Fullstack**: FastAPI + Jinja2 + SQLAlchemy + PostgreSQL + Railway  
3. **Simple MPA**: Astro + Alpine.js + SQLite + Netlify

### API Services  
1. **Node API**: Express + Prisma + PostgreSQL + Jest + Railway
2. **Python API**: FastAPI + SQLAlchemy + PostgreSQL + pytest + Fly.io
3. **Go API**: Gin + sqlx + PostgreSQL + testify + Heroku

### Mobile Backends
1. **Firebase Stack**: Firebase + Cloud Functions + Firestore + FCM
2. **Supabase Stack**: Supabase + Edge Functions + PostgREST + Realtime
3. **Custom Stack**: Express + MongoDB + Socket.io + Push + AWS

### AI/ML Services
1. **OpenAI Stack**: FastAPI + OpenAI + Redis + Celery + Modal
2. **Local AI**: FastAPI + Llama.cpp + SQLite + Modal
3. **Full ML**: FastAPI + Transformers + PostgreSQL + Ray + Kubernetes

## Stack Components
Each stack includes:
- **Language & Framework**: Core technology
- **Database**: Data persistence (start simple)
- **Authentication**: If needed (JWT, OAuth, Magic links)
- **Deployment**: One-click deploy target
- **Dev Tools**: Linting, formatting, hot reload

## Decision Matrix
```
Need auth? → Supabase/Firebase/Clerk
Need real-time? → Socket.io/Supabase Realtime  
Need AI? → OpenAI/Anthropic/Local models
Heavy compute? → Python/Go/Rust
Quick prototype? → Next.js/FastAPI
Enterprise? → Add monitoring, security layers
```

## Output Files
Creates specs/fast-track/stack-selection.md:
```markdown
# Stack Selection

## Selected Stack
[Stack name and components]

## Why This Stack
- [Reason 1: Matches your core feature]
- [Reason 2: Fast deployment]
- [Reason 3: Good documentation]

## Quick Start
1. Dependencies installed ✓
2. Boilerplate created ✓
3. Environment configured ✓

## Next: Implement first feature
Run: /fast-implement "[feature]"
```

## Custom Stack
If user selects 'custom':
- Ask for preferred language
- Suggest compatible components
- Verify all pieces work together
- Still aim for <5 minute setup

## Post-Selection
Automatically:
1. Install all dependencies
2. Create initial project structure
3. Set up development scripts
4. Configure IDE settings
5. Initialize git repository

Show:
```
✅ Stack ready! You have:
- [Framework] for building
- [Database] for data  
- [Deploy target] for shipping
- All dependencies installed

Start coding with:
→ /fast-implement "[your first feature]"
```

## Memory Update
Update CLAUDE.md:
```markdown
## Stack
- Framework: [selected]
- Database: [selected]
- Deploy: [selected]
- Started: [timestamp]
```