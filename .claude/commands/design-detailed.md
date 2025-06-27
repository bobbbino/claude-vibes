# Stage 5: Detailed Design
Create implementation-ready detailed designs.

## Usage
`/design-detailed [optional: component-focus]`

## Example
`/design-detailed "authentication system"`

## Prerequisites
- Completed Stage 4 (specs/04-components/)

## Process
Read all specs from stages 1-4.

Think harder to create parallel designs:
1. Database schema with SQLAlchemy models
2. API design with OpenAPI 3.0 spec
3. Service layer with detailed interfaces
4. Data access patterns and repositories
5. Authentication and authorization flow
6. Error handling and logging strategy
7. Test scenarios and fixtures

## Outputs
- specs/05-detailed-design/database-schema.sql
- specs/05-detailed-design/sqlalchemy-models.py
- specs/05-detailed-design/openapi-spec.yaml
- specs/05-detailed-design/service-interfaces.py
- specs/05-detailed-design/error-handling.md
- specs/05-detailed-design/test-plan.md
- specs/05-detailed-design/sequence-diagrams.md

Update memory:
# Database Tables: [count and names]
# API Endpoints: [count by type]
# Services: [list main services]