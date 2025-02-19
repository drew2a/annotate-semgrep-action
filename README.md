[![Build and Test](https://github.com/drew2a/annotate-semgrep-action/actions/workflows/ci.yml/badge.svg)](https://github.com/drew2a/annotate-semgrep-action/actions/workflows/ci.yml)

# Annotate Semgrep Action

This GitHub Action parses Semgrep JSON reports and adds GitHub PR annotations for detected issues.

# What's new

Please refer to the [release page](https://github.com/drew2a/annotate-semgrep-action/releases/latest) for the latest release notes.

# Usage

<!-- start usage -->
```yaml
- uses: drew2a/annotate-semgrep-action@v1
  with:
    # Path to the JSON Semgrep report
    # Required
    json_path: "results.json"

    # Comma-separated list of severity levels that will fail the job (e.g., ERROR,WARNING)
    # Optional
    fail_on: ""
```
<!-- end usage -->

### Example of usage

```yaml
- name: Run Semgrep
  run: semgrep --config=auto --json > results.json

- name: Annotate Semgrep issues
  uses: drew2a/annotate-semgrep-action@v1
  with:
    json_path: "results.json"
    fail_on: "ERROR,WARNING"
```

### Example of added annotations

# License

The scripts and documentation in this project are released under the [MIT License](LICENSE)
