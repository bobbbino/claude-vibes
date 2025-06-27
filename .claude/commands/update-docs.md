# Update Documentation
Synchronize documentation with current code implementation.

## Usage
`/update-docs [optional: specific area]`

## Example
`/update-docs "API endpoints"`
`/update-docs` (updates all documentation)

## Process
1. Scan for documentation needs:
   - Read current code implementation
   - Check existing documentation
   - Identify gaps or outdated information
2. Use parallel sub-agents to update:
   - **Agent 1**: API documentation
     - Endpoint descriptions
     - Request/response schemas
     - Authentication requirements
   - **Agent 2**: Code documentation
     - Function/class docstrings
     - Inline comments for complex logic
     - Type hints/annotations
   - **Agent 3**: User documentation
     - README updates
     - Setup instructions
     - Usage examples
   - **Agent 4**: Architecture documentation
     - Update diagrams if needed
     - Component descriptions
     - Integration guides
3. Ensure documentation:
   - Matches current implementation
   - Follows project documentation standards
   - Includes examples where helpful
   - Is clear and concise

## Output
- Updated documentation files
- API specification updates
- README improvements
- Code comment additions
- Changelog updates (if applicable)

## Final Step
Review all documentation for:
- Accuracy with current code
- Completeness
- Consistency across all docs
- No outdated information