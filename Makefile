.PHONY: help install dev-install test lint format type-check clean docs run setup

# Default target
help:
	@echo "Claude Vibes - Master Template Makefile"
	@echo ""
	@echo "Available commands:"
	@echo "  make install       Install production dependencies"
	@echo "  make dev-install   Install development dependencies"
	@echo "  make test          Run tests with pytest"
	@echo "  make lint          Run linting with ruff"
	@echo "  make format        Format code with black"
	@echo "  make type-check    Run type checking with mypy"
	@echo "  make clean         Clean up temporary files"
	@echo "  make docs          Build documentation"
	@echo "  make run           Run the application"
	@echo "  make setup         Initial project setup"

# Install production dependencies
install:
	pip install -r requirements.txt

# Install development dependencies
dev-install:
	pip install -r requirements-dev.txt
	pre-commit install

# Run tests
test:
	pytest tests/ -v --cov=src --cov-report=html --cov-report=term

# Run linting
lint:
	ruff check src/ tests/

# Format code
format:
	black src/ tests/
	ruff check src/ tests/ --fix

# Type checking
type-check:
	mypy src/

# Clean temporary files
clean:
	find . -type f -name "*.pyc" -delete
	find . -type d -name "__pycache__" -delete
	find . -type d -name ".pytest_cache" -exec rm -rf {} +
	find . -type d -name ".mypy_cache" -exec rm -rf {} +
	find . -type d -name "*.egg-info" -exec rm -rf {} +
	rm -rf build/ dist/ htmlcov/ .coverage

# Build documentation
docs:
	@echo "Building documentation..."
	# Add sphinx or mkdocs commands here when documentation is set up

# Run the application
run:
	@echo "Running Claude Vibes..."
	# Add main application entry point here

# Initial setup
setup: dev-install
	@echo "Claude Vibes setup complete!"
	@echo "Run '/project-status' in Claude to check framework status"