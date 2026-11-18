# MoonBit Project Commands

# Default target (js for browser compatibility)
target := "js"

# Default task: check and test
default: check test

# Format code
fmt:
    moon fmt

# Type check
check:
    # Existing black-box tests use implicit package imports (warning 25).
    moon check --deny-warn --warn-list=-25 --target {{target}}

# Run tests
test:
    moon test --target {{target}}

# Update snapshot tests
test-update:
    moon test --update --target {{target}}

# Run benchmarks
bench:
    moon bench --target {{target}}

# Generate type definition files
info:
    moon info

# Clean build artifacts
clean:
    moon clean

# Pre-release check
release-check: fmt info check test
