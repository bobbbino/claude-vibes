# Code Review
Review recent code changes for quality, security, and best practices.

## Usage
`/code-review [optional: commit range or file paths]`

## Example
`/code-review HEAD~3..HEAD`
`/code-review src/auth/`
`/code-review` (reviews uncommitted changes)

## Process
1. Identify scope of review:
   - If specified: Review given commits/files
   - If not specified: Review uncommitted changes (git diff)
2. Use parallel sub-agents for comprehensive review:
   - **Agent 1**: Code quality and style
     - Naming conventions
     - Code organization
     - DRY principles
   - **Agent 2**: Security vulnerabilities
     - Input validation
     - Authentication/authorization
     - Sensitive data handling
   - **Agent 3**: Performance and efficiency
     - Algorithm complexity
     - Database queries
     - Resource usage
   - **Agent 4**: Testing and documentation
     - Test coverage
     - Comment quality
     - API documentation
3. Cross-reference with:
   - Project coding standards
   - Architecture decisions (ADRs)
   - Security best practices

## Output
- Review report with:
  - Critical issues (must fix)
  - Suggestions (should consider)
  - Minor improvements (nice to have)
- Specific line-by-line comments
- Security vulnerability alerts
- Performance optimization suggestions