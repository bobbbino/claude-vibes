# Enable Traditional Mode
Switch from fast-track to traditional 7-stage framework workflow.

## Usage
`/enable-traditional`

## Process
1. **Check Current Mode**
   - Read CLAUDE.md to verify current mode
   - If already traditional, inform user and exit
   - If fast-track, proceed with conversion

2. **Confirm Switch**
   ```
   ⚠️  Switching to Traditional Mode
   
   This will:
   ✓ Enable comprehensive 7-stage planning
   ✓ Create full specification structure
   ✓ Require detailed analysis before coding
   
   Your existing work will be preserved.
   
   Continue? (y/n): _
   ```

3. **Create Traditional Structure**
   Create missing directories:
   - specs/00-initial-setup/
   - specs/01-problem-analysis/
   - specs/02-requirements/
   - specs/03-architecture/
   - specs/04-components/
   - specs/05-detailed-design/
   - specs/06-implementation/

4. **Migrate Fast-Track Work**
   If fast-track work exists:
   - Move specs/fast-track/mvp-definition.md → specs/00-initial-setup/problem-statement.md
   - Move specs/fast-track/stack-selection.md → specs/04-components/initial-selection.md
   - Keep specs/generated/* for reference
   - Create implementation summary in specs/06-implementation/

5. **Update CLAUDE.md**
   ```markdown
   ## Framework Mode
   Mode: traditional
   Current Stage: 0 (Initial Setup)
   Previous Mode: fast-track
   Switched: [timestamp]
   
   ## Traditional Framework Status
   - [x] Stage 0: Initial Setup (migrated from fast-track)
   - [ ] Stage 1: Problem Analysis
   - [ ] Stage 2: Requirements Gathering
   - [ ] Stage 3: Architecture Design
   - [~] Stage 4: Component Selection (partial from fast-track)
   - [ ] Stage 5: Detailed Design
   - [~] Stage 6: Implementation (existing code)
   ```

6. **Copy Traditional Commands**
   Ensure all traditional commands are available:
   - analyze-problem.md
   - gather-requirements.md
   - design-architecture.md
   - select-components.md
   - design-detailed.md
   - plan-implementation.md

7. **Generate Migration Report**
   Create specs/migration-report.md:
   ```markdown
   # Fast-Track to Traditional Migration
   
   ## Migrated Assets
   - Problem definition → Stage 0
   - Stack selection → Stage 4
   - Implemented features → Stage 6
   
   ## Recommended Next Steps
   1. Review and expand problem statement
   2. Run /analyze-problem for comprehensive analysis
   3. Run /gather-requirements to formalize features
   4. Run /design-architecture to document structure
   
   ## Preserved Work
   - All code in src/
   - All tests in tests/
   - Configuration files
   - Git history
   ```

## Success Message
```
✅ Traditional Mode Enabled!

Your project now follows the comprehensive 7-stage workflow.

Current Status:
- Stage 0: Partially complete (from fast-track)
- Existing code preserved
- Full planning structure ready

Recommended next steps:
→ /discuss-problem - Review migrated problem statement
→ /analyze-problem - Comprehensive problem analysis
→ /project-status - See traditional workflow status

Your fast-track work has been preserved and integrated.
```

## Error Handling
- If no CLAUDE.md exists: Run /setup-framework --traditional
- If file conflicts: Backup existing files with .fast-track suffix
- If migration fails: Rollback and show error

## Philosophy
Switching to traditional mode is for when:
- Project has grown beyond MVP
- Team is expanding
- Need formal documentation
- Stakeholder requirements
- Enterprise deployment