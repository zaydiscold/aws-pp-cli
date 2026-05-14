---
name: pp-aws-quotas
description: "Printing Press CLI for Aws Quotas. CLI for aws-quotas"
author: "zayd"
license: "Apache-2.0"
argument-hint: "<command> [args] | install cli|mcp"
allowed-tools: "Read Bash"
metadata:
  openclaw:
    requires:
      bins:
        - aws-quotas-pp-cli
---

# Aws Quotas — Printing Press CLI

## Prerequisites: Install the CLI

This skill drives the `aws-quotas-pp-cli` binary. **You must verify the CLI is installed before invoking any command from this skill.** If it is missing, install it first:

1. Install via the Printing Press installer:
   ```bash
   npx -y @mvanhorn/printing-press install aws-quotas --cli-only
   ```
2. Verify: `aws-quotas-pp-cli --version`
3. Ensure `$GOPATH/bin` (or `$HOME/go/bin`) is on `$PATH`.

If the `npx` install fails before this CLI has a public-library category, install Node or use the category-specific Go fallback after publish.

If `--version` reports "command not found" after install, the install step did not put the binary on `$PATH`. Do not proceed with skill commands until verification succeeds.

CLI for aws-quotas

## Command Reference

**requested_service_quota_change** — Operations on requested service quota changes

- `aws-quotas-pp-cli requested_service_quota_change get` — Retrieve information about the specified quota increase request
- `aws-quotas-pp-cli requested_service_quota_change list_history` — Retrieve the quota increase requests for the specified service
- `aws-quotas-pp-cli requested_service_quota_change list_history_by_quota` — Retrieve the quota increase requests for the specified quota
- `aws-quotas-pp-cli requested_service_quota_change request` — Submit a quota increase request for the specified quota

**service** — Operations on AWS services with quotas

- `aws-quotas-pp-cli service` — List the names and codes for the AWS services integrated with Service Quotas

**service_quota** — Operations on service quotas

- `aws-quotas-pp-cli service_quota get` — Retrieve the applied quota value for the specified quota
- `aws-quotas-pp-cli service_quota get_default` — Retrieve the default value for the specified quota
- `aws-quotas-pp-cli service_quota list` — List the applied quota values for the specified AWS service
- `aws-quotas-pp-cli service_quota list_default` — List the default values for the quotas for the specified AWS service

**service_quota_increase_template** — Operations on quota increase requests in the template

- `aws-quotas-pp-cli service_quota_increase_template delete` — Delete the quota increase request for the specified quota from your template
- `aws-quotas-pp-cli service_quota_increase_template get` — Retrieve the quota increase request for the specified quota from the template
- `aws-quotas-pp-cli service_quota_increase_template list` — List the quota increase requests in the template
- `aws-quotas-pp-cli service_quota_increase_template put` — Add a quota increase request to your quota request template

**service_quota_template** — Operations on the service quota template association

- `aws-quotas-pp-cli service_quota_template associate` — Associate the quota request template with your organization
- `aws-quotas-pp-cli service_quota_template disassociate` — Disassociate the quota request template from your organization
- `aws-quotas-pp-cli service_quota_template get_association` — Get the status of the association for the quota request template

**tag** — Operations on resource tags

- `aws-quotas-pp-cli tag list` — Return a list of the tags assigned to the specified applied quota
- `aws-quotas-pp-cli tag tag` — Add tags to the specified applied quota
- `aws-quotas-pp-cli tag untag` — Remove tags from the specified applied quota


### Finding the right command

When you know what you want to do but not which command does it, ask the CLI directly:

```bash
aws-quotas-pp-cli which "<capability in your own words>"
```

`which` resolves a natural-language capability query to the best matching command from this CLI's curated feature index. Exit code `0` means at least one match; exit code `2` means no confident match — fall back to `--help` or use a narrower query.

## Auth Setup

Run `aws-quotas-pp-cli auth setup` for the URL and steps to obtain a token (add `--launch` to open the URL). Then store it:

```bash
aws-quotas-pp-cli auth set-token YOUR_TOKEN_HERE
```

Or set `AWS_ACCESS_KEY_ID` as an environment variable.

Run `aws-quotas-pp-cli doctor` to verify setup.

## Agent Mode

Add `--agent` to any command. Expands to: `--json --compact --no-input --no-color --yes`.

- **Pipeable** — JSON on stdout, errors on stderr
- **Filterable** — `--select` keeps a subset of fields. Dotted paths descend into nested structures; arrays traverse element-wise. Critical for keeping context small on verbose APIs:

  ```bash
  aws-quotas-pp-cli requested_service_quota_change get --agent --select id,name,status
  ```
- **Previewable** — `--dry-run` shows the request without sending
- **Offline-friendly** — sync/search commands can use the local SQLite store when available
- **Non-interactive** — never prompts, every input is a flag
- **Explicit retries** — use `--idempotent` only when an already-existing create should count as success

### Response envelope

Commands that read from the local store or the API wrap output in a provenance envelope:

```json
{
  "meta": {"source": "live" | "local", "synced_at": "...", "reason": "..."},
  "results": <data>
}
```

Parse `.results` for data and `.meta.source` to know whether it's live or local. A human-readable `N results (live)` summary is printed to stderr only when stdout is a terminal — piped/agent consumers get pure JSON on stdout.

## Agent Feedback

When you (or the agent) notice something off about this CLI, record it:

```
aws-quotas-pp-cli feedback "the --since flag is inclusive but docs say exclusive"
aws-quotas-pp-cli feedback --stdin < notes.txt
aws-quotas-pp-cli feedback list --json --limit 10
```

Entries are stored locally at `~/.aws-quotas-pp-cli/feedback.jsonl`. They are never POSTed unless `AWS_QUOTAS_FEEDBACK_ENDPOINT` is set AND either `--send` is passed or `AWS_QUOTAS_FEEDBACK_AUTO_SEND=true`. Default behavior is local-only.

Write what *surprised* you, not a bug report. Short, specific, one line: that is the part that compounds.

## Output Delivery

Every command accepts `--deliver <sink>`. The output goes to the named sink in addition to (or instead of) stdout, so agents can route command results without hand-piping. Three sinks are supported:

| Sink | Effect |
|------|--------|
| `stdout` | Default; write to stdout only |
| `file:<path>` | Atomically write output to `<path>` (tmp + rename) |
| `webhook:<url>` | POST the output body to the URL (`application/json` or `application/x-ndjson` when `--compact`) |

Unknown schemes are refused with a structured error naming the supported set. Webhook failures return non-zero and log the URL + HTTP status on stderr.

## Named Profiles

A profile is a saved set of flag values, reused across invocations. Use it when a scheduled agent calls the same command every run with the same configuration - HeyGen's "Beacon" pattern.

```
aws-quotas-pp-cli profile save briefing --json
aws-quotas-pp-cli --profile briefing requested_service_quota_change get
aws-quotas-pp-cli profile list --json
aws-quotas-pp-cli profile show briefing
aws-quotas-pp-cli profile delete briefing --yes
```

Explicit flags always win over profile values; profile values win over defaults. `agent-context` lists all available profiles under `available_profiles` so introspecting agents discover them at runtime.

## Exit Codes

| Code | Meaning |
|------|---------|
| 0 | Success |
| 2 | Usage error (wrong arguments) |
| 3 | Resource not found |
| 4 | Authentication required |
| 5 | API error (upstream issue) |
| 7 | Rate limited (wait and retry) |
| 10 | Config error |

## Argument Parsing

Parse `$ARGUMENTS`:

1. **Empty, `help`, or `--help`** → show `aws-quotas-pp-cli --help` output
2. **Starts with `install`** → ends with `mcp` → MCP installation; otherwise → see Prerequisites above
3. **Anything else** → Direct Use (execute as CLI command with `--agent`)

## MCP Server Installation

Install the MCP binary from this CLI's published public-library entry or pre-built release, then register it:

```bash
claude mcp add aws-quotas-pp-mcp -- aws-quotas-pp-mcp
```

Verify: `claude mcp list`

## Direct Use

1. Check if installed: `which aws-quotas-pp-cli`
   If not found, offer to install (see Prerequisites at the top of this skill).
2. Match the user query to the best command from the Unique Capabilities and Command Reference above.
3. Execute with the `--agent` flag:
   ```bash
   aws-quotas-pp-cli <command> [subcommand] [args] --agent
   ```
4. If ambiguous, drill into subcommand help: `aws-quotas-pp-cli <command> --help`.
