# Setup Framework
Initializes the Claude Vibes Framework with Fast-Track mode by default.

## Usage
`/setup-framework` - Fast-Track mode (default)
`/setup-framework --traditional` - Traditional 7-stage workflow
`/setup-framework --mode [fast-track|traditional]` - Explicit mode selection

## Fast-Track Mode (Default)
When run without flags, initializes AI-Powered Fast Track for rapid MVP development:

1. Create minimal directory structure:
   - specs/fast-track/
   - specs/generated/ (for AI background generation)
   - .claude/commands/
   - .claude/lib/

2. Create CLAUDE.md with fast-track configuration:
   ```
   ## Framework Mode
   Mode: fast-track
   Started: [timestamp]
   
   ## Fast Track Status
   - [ ] MVP defined
   - [ ] Stack selected
   - [ ] First feature implemented
   - [ ] Deployed
   ```

3. Create fast-track commands:
   - turbo-mvp.md - All-in-one MVP starter
   - fast-define.md - Quick problem definition
   - fast-stack.md - Instant stack selection
   - fast-implement.md - Direct to coding

4. Initialize git repository with .gitignore
5. Show quick start message:
   ```
   🚀 Claude Vibes Fast-Track Mode Initialized!
   
   You're ready to code in 5 minutes! Try:
   → /turbo-mvp "your app idea"
   
   Or step by step:
   → /fast-define "problem"
   → /fast-stack
   → /fast-implement "feature"
   
   Need comprehensive planning? Run:
   → /setup-framework --traditional
   ```

## Traditional Mode
When run with --traditional flag:

1. Create full directory structure:
   - specs/00-initial-setup/
   - specs/01-problem-analysis/
   - specs/02-requirements/
   - specs/03-architecture/
   - specs/04-components/
   - specs/05-detailed-design/
   - specs/06-implementation/
   - .claude/commands/

2. Create CLAUDE.md with traditional configuration:
   ```
   ## Framework Mode
   Mode: traditional
   Current Stage: 0 (Initial Setup)
   ```

3. Create problem-statement.md template in specs/00-initial-setup/
4. Copy all traditional framework commands
5. Create specs/README.md with stage tracking
6. Initialize git repository with .gitignore
7. Create Makefile with common tasks
8. Set up pre-commit hooks configuration

## Mode Detection
- Check for existing CLAUDE.md
- If exists, read current mode
- If mode switch requested, confirm with user
- Update configuration accordingly

Report completion status and next steps based on selected mode.