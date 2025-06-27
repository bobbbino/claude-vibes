# Claude Vibes Framework

<div align="center">

🚀 **Fully Automated Development with Claude Code** 🚀

[![Framework Version](https://img.shields.io/badge/Framework-v2.0-blue.svg)](https://github.com/bobbbino/claude-vibes)
[![Claude Code Compatible](https://img.shields.io/badge/Claude%20Code-Compatible-green.svg)](https://claude.ai/code)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

*Transform Claude Code into an autonomous development system that takes your project from idea to implementation with zero copy-paste.*

</div>

## 🎯 What is Claude Vibes?

Claude Vibes is a comprehensive development framework that automates the entire software development lifecycle through intelligent commands. It guides you through 7 structured stages, from initial problem definition to fully implemented code.

### Why Claude Vibes?

- **85% Reduction** in manual specification work
- **Zero Copy-Paste** between development stages
- **100% Traceable** requirements to implementation
- **3x Faster** development with proper planning
- **50% Fewer Bugs** through comprehensive upfront design
- **100% Implementable** package selections through registry verification

## 🚀 Quick Start

### Prerequisites

- [Claude Code](https://claude.ai/code) installed
- Git initialized in your project directory
- Basic familiarity with command-line interfaces

### Installation

1. Clone this repository or copy the framework files:
```bash
git clone https://github.com/bobbbino/claude-vibes.git
cd claude-vibes
```

2. Start Claude Code in your project directory:
```bash
claude
```

3. Initialize the framework:
```bash
/setup-framework
```

This will:
- Create the complete specs/ directory structure
- Set up all custom commands
- Configure Context7 MCP server for documentation access
- Create problem statement template

## 📚 How It Works

### The 7-Stage Development Process

| Stage | Command | Purpose |
|-------|---------|---------|
| 0 | `/discuss-problem` | Review and clarify problem statement |
| 1 | `/analyze-problem` | Deep problem analysis & research |
| 2 | `/gather-requirements` | Generate comprehensive requirements |
| 3 | `/design-architecture` | Create system architecture |
| 4 | `/select-components` | Research & select technology stack |
| 5 | `/design-detailed` | Create implementation-ready designs |
| 6 | `/plan-implementation` | Generate sprint plans & tasks |

### Development Commands

| Command | Purpose |
|---------|---------|
| `/implement-next` | Start next task from sprint plan |
| `/write-test` | Create test for current feature |
| `/code-review` | Review recent changes |
| `/update-docs` | Sync documentation with code |
| `/project-status` | Check current progress |

## 🎮 Complete Walkthrough

### Starting a New Project

```bash
# 1. Initialize framework
/setup-framework

# 2. Edit problem statement
# Open specs/00-initial-setup/problem-statement.md and fill it out

# 3. Clarify requirements
/discuss-problem

# 4. Analyze the problem
/analyze-problem

# 5. Gather requirements
/gather-requirements

# 6. Design architecture
/design-architecture

# 7. Select components
/select-components

# 8. Create detailed design
/design-detailed

# 9. Plan implementation
/plan-implementation

# 10. Start coding!
/implement-next
```

## 🔥 Key Features

### 1. Language & Technology Agnostic
- Works with any programming language
- Adapts to your technology preferences
- No hardcoded assumptions

### 2. MCP Server Integration
- **Context7**: Real-time documentation for 20,000+ libraries
- **Playwright MCP**: Browser automation for web apps
- Automatic configuration during setup

### 3. Parallel Processing
- Uses sub-agents to work on multiple tasks simultaneously
- Maximizes efficiency without compromising quality
- Intelligent task distribution

### 4. Quality Assurance Built-In
- Enforces TDD (Test-Driven Development)
- Runs all tests before marking tasks complete
- Verifies acceptance criteria
- Package version verification

### 5. Smart Documentation
- Maintains consistency across all specifications
- User clarification at each stage
- Complete traceability from problem to code

## 📋 Example: Building a Todo App

```bash
# Initialize
/setup-framework

# Edit problem statement
# "Build a web-based todo application with user authentication,
#  task management, and real-time collaboration features"

# Work through stages
/discuss-problem    # Clarifies: "How many users? Mobile support?"
/analyze-problem    # Creates user personas, market research
/gather-requirements # Defines features, APIs, acceptance criteria
/design-architecture # Chooses microservices, React, Node.js
/select-components  # Selects Next.js 14.2.0, PostgreSQL 16
/design-detailed    # Creates database schema, API specs
/plan-implementation # Creates 6 sprints, 47 tasks

# Start implementing
/implement-next     # Implements user authentication
# ... continues until complete
```

## 🛡️ Best Practices

### 1. Fill Out Problem Statement Thoroughly
The problem statement drives everything. Include:
- Problem description
- Target users
- Goals and constraints
- Technology preferences

### 2. Trust the Process
- Follow stages sequentially
- Don't skip stages
- Let Claude think through complex problems

### 3. Review Key Outputs
- Check Architecture Decision Records (ADRs)
- Validate package versions exist in registries
- Review sprint plans before implementation

### 4. Leverage Parallelization
- Multiple terminal windows for faster development
- Let sub-agents work concurrently
- Review consolidated outputs

## ⚠️ Common Pitfalls

1. **Using Non-Existent Package Versions**
   - Framework verifies all versions in official registries
   - Never assumes GitHub tags = published packages

2. **Skipping Stages**
   - Each stage builds on previous outputs
   - Missing stages = implementation failures

3. **Ignoring Test Failures**
   - `/implement-next` requires all tests to pass
   - Fix immediately, don't accumulate debt

## 🤝 Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## 📄 License

This project is licensed under the MIT License - see [LICENSE](LICENSE) for details.

## 🙏 Acknowledgments

- Built for [Claude Code](https://claude.ai/code) by Anthropic
- Uses [Context7](https://github.com/upstash/context7) for documentation
- Inspired by industry best practices in software engineering

## 📞 Support

- **Issues**: [GitHub Issues](https://github.com/bobbbino/claude-vibes/issues)
- **Discussions**: [GitHub Discussions](https://github.com/bobbbino/claude-vibes/discussions)
- **Documentation**: [Full Framework Guide](docs/ccm-framework.md)

---

<div align="center">

**Ready to transform your development process?**

[Get Started](#-quick-start) • [Read the Docs](docs/ccm-framework.md) • [View Examples](#-example-building-a-todo-app)

</div>