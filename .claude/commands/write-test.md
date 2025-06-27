# Write Test
Create comprehensive tests for current feature or specified component.

## Usage
`/write-test [optional: feature/component name]`

## Example
`/write-test "user authentication"`
`/write-test` (tests current feature)

## Process
1. Identify what to test:
   - If feature specified: Focus on that feature
   - If not specified: Read current task from sprint plan
2. Analyze implementation to understand:
   - Expected behavior and edge cases
   - Input validation requirements
   - Error conditions
3. Use parallel sub-agents to create tests:
   - **Agent 1**: Unit tests for individual functions/methods
   - **Agent 2**: Integration tests for component interactions
   - **Agent 3**: Edge cases and error handling tests
   - **Agent 4**: Performance/load tests (if applicable)
4. Follow testing best practices:
   - Arrange-Act-Assert pattern
   - Descriptive test names
   - Test isolation
   - Mock external dependencies
5. Ensure tests align with:
   - Acceptance criteria from sprint plan
   - Technology stack testing conventions

## Output
- Test files in appropriate test directory
- Updated test documentation
- Coverage report (if applicable)