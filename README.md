# Aws Quotas CLI

CLI for aws-quotas

Printed by [@zaydiscold](https://github.com/zaydiscold) (zayd).

## Install

The recommended path installs both the `aws-quotas-pp-cli` binary and the `pp-aws-quotas` agent skill in one shot:

```bash
npx -y @mvanhorn/printing-press install aws-quotas
```

For CLI only (no skill):

```bash
npx -y @mvanhorn/printing-press install aws-quotas --cli-only
```


### Without Node

The generated install path is category-agnostic until this CLI is published. If `npx` is not available before publish, install Node or use the category-specific Go fallback from the public-library entry after publish.

### Pre-built binary

Download a pre-built binary for your platform from the [latest release](https://github.com/mvanhorn/printing-press-library/releases/tag/aws-quotas-current). On macOS, clear the Gatekeeper quarantine: `xattr -d com.apple.quarantine <binary>`. On Unix, mark it executable: `chmod +x <binary>`.

<!-- pp-hermes-install-anchor -->
## Install for Hermes

From the Hermes CLI:

```bash
hermes skills install mvanhorn/printing-press-library/cli-skills/pp-aws-quotas --force
```

Inside a Hermes chat session:

```bash
/skills install mvanhorn/printing-press-library/cli-skills/pp-aws-quotas --force
```

## Install for OpenClaw

Tell your OpenClaw agent (copy this):

```
Install the pp-aws-quotas skill from https://github.com/mvanhorn/printing-press-library/tree/main/cli-skills/pp-aws-quotas. The skill defines how its required CLI can be installed.
```

## Quick Start

### 1. Install

See [Install](#install) above.

### 2. Set Up Credentials

Get your access token from your API provider's developer portal, then store it:

```bash
aws-quotas-pp-cli auth set-token YOUR_TOKEN_HERE
```

Or set it via environment variable:

```bash
export AWS_ACCESS_KEY_ID="your-token-here"
```

### 3. Verify Setup

```bash
aws-quotas-pp-cli doctor
```

This checks your configuration and credentials.

### 4. Try Your First Command

```bash
aws-quotas-pp-cli requested_service_quota_change get
```

## Usage

Run `aws-quotas-pp-cli --help` for the full command reference and flag list.

## Commands

### requested_service_quota_change

Operations on requested service quota changes

- **`aws-quotas-pp-cli requested_service_quota_change get`** - Retrieve information about the specified quota increase request
- **`aws-quotas-pp-cli requested_service_quota_change list_history`** - Retrieve the quota increase requests for the specified service
- **`aws-quotas-pp-cli requested_service_quota_change list_history_by_quota`** - Retrieve the quota increase requests for the specified quota
- **`aws-quotas-pp-cli requested_service_quota_change request`** - Submit a quota increase request for the specified quota

### service

Operations on AWS services with quotas

- **`aws-quotas-pp-cli service list`** - List the names and codes for the AWS services integrated with Service Quotas

### service_quota

Operations on service quotas

- **`aws-quotas-pp-cli service_quota get`** - Retrieve the applied quota value for the specified quota
- **`aws-quotas-pp-cli service_quota get_default`** - Retrieve the default value for the specified quota
- **`aws-quotas-pp-cli service_quota list`** - List the applied quota values for the specified AWS service
- **`aws-quotas-pp-cli service_quota list_default`** - List the default values for the quotas for the specified AWS service

### service_quota_increase_template

Operations on quota increase requests in the template

- **`aws-quotas-pp-cli service_quota_increase_template delete`** - Delete the quota increase request for the specified quota from your template
- **`aws-quotas-pp-cli service_quota_increase_template get`** - Retrieve the quota increase request for the specified quota from the template
- **`aws-quotas-pp-cli service_quota_increase_template list`** - List the quota increase requests in the template
- **`aws-quotas-pp-cli service_quota_increase_template put`** - Add a quota increase request to your quota request template

### service_quota_template

Operations on the service quota template association

- **`aws-quotas-pp-cli service_quota_template associate`** - Associate the quota request template with your organization
- **`aws-quotas-pp-cli service_quota_template disassociate`** - Disassociate the quota request template from your organization
- **`aws-quotas-pp-cli service_quota_template get_association`** - Get the status of the association for the quota request template

### tag

Operations on resource tags

- **`aws-quotas-pp-cli tag list`** - Return a list of the tags assigned to the specified applied quota
- **`aws-quotas-pp-cli tag tag`** - Add tags to the specified applied quota
- **`aws-quotas-pp-cli tag untag`** - Remove tags from the specified applied quota


## Output Formats

```bash
# Human-readable table (default in terminal, JSON when piped)
aws-quotas-pp-cli requested_service_quota_change get

# JSON for scripting and agents
aws-quotas-pp-cli requested_service_quota_change get --json

# Filter to specific fields
aws-quotas-pp-cli requested_service_quota_change get --json --select id,name,status

# Dry run — show the request without sending
aws-quotas-pp-cli requested_service_quota_change get --dry-run

# Agent mode — JSON + compact + no prompts in one flag
aws-quotas-pp-cli requested_service_quota_change get --agent
```

## Agent Usage

This CLI is designed for AI agent consumption:

- **Non-interactive** - never prompts, every input is a flag
- **Pipeable** - `--json` output to stdout, errors to stderr
- **Filterable** - `--select id,name` returns only fields you need
- **Previewable** - `--dry-run` shows the request without sending
- **Explicit retries** - add `--idempotent` to create retries when a no-op success is acceptable
- **Confirmable** - `--yes` for explicit confirmation of destructive actions
- **Piped input** - write commands can accept structured input when their help lists `--stdin`
- **Offline-friendly** - sync/search commands can use the local SQLite store when available
- **Agent-safe by default** - no colors or formatting unless `--human-friendly` is set

Exit codes: `0` success, `2` usage error, `3` not found, `4` auth error, `5` API error, `7` rate limited, `10` config error.

## Use with Claude Code

Install the focused skill — it auto-installs the CLI on first invocation:

```bash
npx skills add mvanhorn/printing-press-library/cli-skills/pp-aws-quotas -g
```

Then invoke `/pp-aws-quotas <query>` in Claude Code. The skill is the most efficient path — Claude Code drives the CLI directly without an MCP server in the middle.

<details>
<summary>Use as an MCP server in Claude Code (advanced)</summary>

If you'd rather register this CLI as an MCP server in Claude Code, install the MCP binary first:


Install the MCP binary from this CLI's published public-library entry or pre-built release.

Then register it:

```bash
claude mcp add aws-quotas aws-quotas-pp-mcp -e AWS_ACCESS_KEY_ID=<your-token>
```

</details>

## Use with Claude Desktop

This CLI ships an [MCPB](https://github.com/modelcontextprotocol/mcpb) bundle — Claude Desktop's standard format for one-click MCP extension installs (no JSON config required).

To install:

1. Download the `.mcpb` for your platform from the [latest release](https://github.com/mvanhorn/printing-press-library/releases/tag/aws-quotas-current).
2. Double-click the `.mcpb` file. Claude Desktop opens and walks you through the install.
3. Fill in `AWS_ACCESS_KEY_ID` when Claude Desktop prompts you.

Requires Claude Desktop 1.0.0 or later. Pre-built bundles ship for macOS Apple Silicon (`darwin-arm64`) and Windows (`amd64`, `arm64`); for other platforms, use the manual config below.

<details>
<summary>Manual JSON config (advanced)</summary>

If you can't use the MCPB bundle (older Claude Desktop, unsupported platform), install the MCP binary and configure it manually.


Install the MCP binary from this CLI's published public-library entry or pre-built release.

Add to your Claude Desktop config (`~/Library/Application Support/Claude/claude_desktop_config.json`):

```json
{
  "mcpServers": {
    "aws-quotas": {
      "command": "aws-quotas-pp-mcp",
      "env": {
        "AWS_ACCESS_KEY_ID": "<your-key>"
      }
    }
  }
}
```

</details>

## Health Check

```bash
aws-quotas-pp-cli doctor
```

Verifies configuration, credentials, and connectivity to the API.

## Configuration

Config file: `~/.config/aws-quotas-pp-cli/config.toml`

Static request headers can be configured under `headers`; per-command header overrides take precedence.

Environment variables:

| Name | Kind | Required | Description |
| --- | --- | --- | --- |
| `AWS_ACCESS_KEY_ID` | per_call | Yes | Set to your API credential. |
| `AWS_SECRET_ACCESS_KEY` | per_call | Yes | Set to your API credential. |

## Troubleshooting
**Authentication errors (exit code 4)**
- Run `aws-quotas-pp-cli doctor` to check credentials
- Verify the environment variable is set: `echo $AWS_ACCESS_KEY_ID`
**Not found errors (exit code 3)**
- Check the resource ID is correct
- Run the `list` command to see available items

---

Generated by [CLI Printing Press](https://github.com/mvanhorn/cli-printing-press)
