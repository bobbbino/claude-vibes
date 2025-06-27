# Fast Implement
Direct implementation of features with minimal planning - code first, refine later.

## Usage
`/fast-implement "[feature description]"`

## Examples
`/fast-implement "user can create an account with email"`
`/fast-implement "display expenses in a chart"`
`/fast-implement "add item to shopping cart"`
`/fast-implement "send notification when task is due"`

## Process
1. **Feature Analysis** (30 seconds)
   - Parse feature description
   - Identify components needed (API, UI, DB)
   - Determine simplest implementation

2. **Instant Implementation** (3-5 minutes)
   Create working code following this priority:
   - **Functionality first**: Make it work
   - **Polish later**: Skip animations, fancy UI
   - **Hard-code OK**: Use mock data if faster
   - **Refactor later**: Duplicate code is fine

3. **Test-Driven When Obvious** (1 minute)
   - Write one simple test if behavior is clear
   - Skip complex test scenarios
   - Focus on happy path only

## Implementation Patterns

### API Endpoint Pattern
```javascript
// Fast implementation - works immediately
app.post('/api/[resource]', async (req, res) => {
  // Input validation - basic only
  const { field1, field2 } = req.body;
  if (!field1) return res.status(400).json({ error: 'field1 required' });
  
  // Business logic - simplest approach
  const result = await db.[resource].create({
    data: { field1, field2 }
  });
  
  res.json(result);
});
```

### UI Component Pattern  
```jsx
// Fast implementation - functional immediately
export default function [Feature]() {
  const [data, setData] = useState([]);
  
  // Simplest data fetching
  useEffect(() => {
    fetch('/api/[resource]')
      .then(r => r.json())
      .then(setData);
  }, []);
  
  return (
    <div>
      {data.map(item => (
        <div key={item.id}>{item.name}</div>
      ))}
    </div>
  );
}
```

### Database Pattern
```sql
-- Minimal schema - expand later
CREATE TABLE [resource] (
  id SERIAL PRIMARY KEY,
  [field1] TEXT NOT NULL,
  [field2] TEXT,
  created_at TIMESTAMP DEFAULT NOW()
);
```

## Speed Optimizations
1. **Skip These Initially**:
   - Complex validation
   - Error handling edge cases  
   - Optimized queries
   - Accessibility (add later)
   - Internationalization
   - Complex state management

2. **Use These Shortcuts**:
   - Inline styles over CSS files
   - JSON files over database (for MVP)
   - localStorage over user sessions
   - console.log over proper logging
   - Alert() over toast notifications
   - Submit buttons over auto-save

3. **Framework Shortcuts**:
   - Next.js: Use API routes for everything
   - FastAPI: Use Pydantic models minimally
   - Express: Skip middleware initially
   - React: useState over Redux/Context

## Progressive Enhancement
After initial implementation works:
```
✅ Feature working! Enhance with:
→ /enhance-ui - Add styling and UX
→ /enhance-api - Add validation and errors  
→ /enhance-data - Optimize database queries
→ /add-tests - Comprehensive test suite
```

## Common Features Implementation Time
- User signup/login: 5 minutes (use Supabase/Clerk)
- CRUD operations: 3 minutes per resource
- File upload: 4 minutes (use cloud service)
- Search: 2 minutes (basic), 10 minutes (advanced)
- Charts: 3 minutes (Chart.js/Recharts)
- Notifications: 5 minutes (email/push)
- Payments: 10 minutes (Stripe/Lemonsqueezy)

## Output Structure
```
Feature: [feature name]
Files created/modified:
- src/api/[feature].js - API endpoint
- src/components/[Feature].jsx - UI component  
- src/lib/db/schema.sql - Database updates
- tests/[feature].test.js - Basic test

Status: ✅ Working implementation
Next: Test in browser at [url]
```

## Git Commit
Auto-commit with message:
```
feat: implement [feature description]

- Add API endpoint for [resource]
- Create UI component for [action]
- Update database schema
- Add basic test coverage

Fast-tracked implementation - ready for testing
```

## Error Recovery
If implementation fails:
- Show clear error message
- Suggest simpler approach
- Offer to mock the feature
- Ask for clarification

## Memory Update
Track implemented features:
```markdown
## Implemented Features
- [x] [Feature 1] - [timestamp]
- [x] [Feature 2] - [timestamp]
- [ ] [Planned feature]

## Next Features
Based on user feedback:
- [ ] [Suggested by testing]
```

## Philosophy
"Make it work, make it right, make it fast" - Kent Beck

We're in the "make it work" phase. Speed beats perfection in MVP development.