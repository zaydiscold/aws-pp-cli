---
name: pp-aws-pp
description: "Printing Press CLI for Aws Pp. Combined CLI for multiple API services"
author: "zayd"
license: "Apache-2.0"
argument-hint: "<command> [args] | install cli|mcp"
allowed-tools: "Read Bash"
metadata:
  openclaw:
    requires:
      bins:
        - aws-pp-pp-cli
---

# Aws Pp — Printing Press CLI

## Prerequisites: Install the CLI

This skill drives the `aws-pp-pp-cli` binary. **You must verify the CLI is installed before invoking any command from this skill.** If it is missing, install it first:

1. Install via the Printing Press installer:
   ```bash
   npx -y @mvanhorn/printing-press install aws-pp --cli-only
   ```
2. Verify: `aws-pp-pp-cli --version`
3. Ensure `$GOPATH/bin` (or `$HOME/go/bin`) is on `$PATH`.

If the `npx` install fails before this CLI has a public-library category, install Node or use the category-specific Go fallback after publish.

If `--version` reports "command not found" after install, the install step did not put the binary on `$PATH`. Do not proceed with skill commands until verification succeeds.

Combined CLI for multiple API services

## Command Reference

**x-amz-target-awsinsights-index-service-create-anomaly-monitor** — Manage x amz target awsinsights index service create anomaly monitor

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-create-anomaly-monitor` — Creates a new cost anomaly detection monitor with the requested type and monitor specification.

**x-amz-target-awsinsights-index-service-create-anomaly-subscription** — Manage x amz target awsinsights index service create anomaly subscription

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-create-anomaly-subscription` — Adds an alert subscription to a cost anomaly detection monitor. You can use each subscription to define subscribers...

**x-amz-target-awsinsights-index-service-create-cost-category-definition** — Manage x amz target awsinsights index service create cost category definition

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-create-cost-category-definition` — Creates a new Cost Category with the requested name and rules.

**x-amz-target-awsinsights-index-service-delete-anomaly-monitor** — Manage x amz target awsinsights index service delete anomaly monitor

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-delete-anomaly-monitor` — Deletes a cost anomaly monitor.

**x-amz-target-awsinsights-index-service-delete-anomaly-subscription** — Manage x amz target awsinsights index service delete anomaly subscription

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-delete-anomaly-subscription` — Deletes a cost anomaly subscription.

**x-amz-target-awsinsights-index-service-delete-cost-category-definition** — Manage x amz target awsinsights index service delete cost category definition

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-delete-cost-category-definition` — Deletes a Cost Category. Expenses from this month going forward will no longer be categorized with this Cost Category.

**x-amz-target-awsinsights-index-service-describe-cost-category-definition** — Manage x amz target awsinsights index service describe cost category definition

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-describe-cost-category-definition` — <p>Returns the name, Amazon Resource Name (ARN), rules, definition, and effective dates of a Cost Category that's...

**x-amz-target-awsinsights-index-service-get-anomalies** — Manage x amz target awsinsights index service get anomalies

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-anomalies` — Retrieves all of the cost anomalies detected on your account during the time period that's specified by the...

**x-amz-target-awsinsights-index-service-get-anomaly-monitors** — Manage x amz target awsinsights index service get anomaly monitors

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-anomaly-monitors` — Retrieves the cost anomaly monitor definitions for your account. You can filter using a list of cost anomaly monitor...

**x-amz-target-awsinsights-index-service-get-anomaly-subscriptions** — Manage x amz target awsinsights index service get anomaly subscriptions

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-anomaly-subscriptions` — Retrieves the cost anomaly subscription objects for your account. You can filter using a list of cost anomaly...

**x-amz-target-awsinsights-index-service-get-cost-and-usage** — Manage x amz target awsinsights index service get cost and usage

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-cost-and-usage` — <p>Retrieves cost and usage metrics for your account. You can specify which cost and usage-related metric that you...

**x-amz-target-awsinsights-index-service-get-cost-and-usage-with-resources** — Manage x amz target awsinsights index service get cost and usage with resources

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-cost-and-usage-with-resources` — <p>Retrieves cost and usage metrics with resources for your account. You can specify which cost and usage-related...

**x-amz-target-awsinsights-index-service-get-cost-categories** — Manage x amz target awsinsights index service get cost categories

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-cost-categories` — <p>Retrieves an array of Cost Category names and values incurred cost.</p> <note> <p>If some Cost Category names and...

**x-amz-target-awsinsights-index-service-get-cost-forecast** — Manage x amz target awsinsights index service get cost forecast

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-cost-forecast` — Retrieves a forecast for how much Amazon Web Services predicts that you will spend over the forecast time period...

**x-amz-target-awsinsights-index-service-get-dimension-values** — Manage x amz target awsinsights index service get dimension values

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-dimension-values` — Retrieves all available filter values for a specified filter over a period of time. You can search the dimension...

**x-amz-target-awsinsights-index-service-get-reservation-coverage** — Manage x amz target awsinsights index service get reservation coverage

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-reservation-coverage` — <p>Retrieves the reservation coverage for your account, which you can use to see how much of your Amazon Elastic...

**x-amz-target-awsinsights-index-service-get-reservation-purchase-recommendation** — Manage x amz target awsinsights index service get reservation purchase recommendation

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-reservation-purchase-recommendation` — <p>Gets recommendations for reservation purchases. These recommendations might help you to reduce your costs....

**x-amz-target-awsinsights-index-service-get-reservation-utilization** — Manage x amz target awsinsights index service get reservation utilization

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-reservation-utilization` — Retrieves the reservation utilization for your account. Management account in an organization have access to member...

**x-amz-target-awsinsights-index-service-get-rightsizing-recommendation** — Manage x amz target awsinsights index service get rightsizing recommendation

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-rightsizing-recommendation` — <p>Creates recommendations that help you save cost by identifying idle and underutilized Amazon EC2 instances.</p>...

**x-amz-target-awsinsights-index-service-get-savings-plans-coverage** — Manage x amz target awsinsights index service get savings plans coverage

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-savings-plans-coverage` — <p>Retrieves the Savings Plans covered for your account. This enables you to see how much of your cost is covered by...

**x-amz-target-awsinsights-index-service-get-savings-plans-purchase-recommendation** — Manage x amz target awsinsights index service get savings plans purchase recommendation

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-savings-plans-purchase-recommendation` — Retrieves the Savings Plans recommendations for your account. First use...

**x-amz-target-awsinsights-index-service-get-savings-plans-utilization** — Manage x amz target awsinsights index service get savings plans utilization

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-savings-plans-utilization` — <p>Retrieves the Savings Plans utilization for your account across date ranges with daily or monthly granularity....

**x-amz-target-awsinsights-index-service-get-savings-plans-utilization-details** — Manage x amz target awsinsights index service get savings plans utilization details

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-savings-plans-utilization-details` — <p>Retrieves attribute data along with aggregate utilization and savings data for a given time period. This doesn't...

**x-amz-target-awsinsights-index-service-get-tags** — Manage x amz target awsinsights index service get tags

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-tags` — Queries for available tag keys and tag values for a specified period. You can search the tag values for an arbitrary...

**x-amz-target-awsinsights-index-service-get-usage-forecast** — Manage x amz target awsinsights index service get usage forecast

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-usage-forecast` — Retrieves a forecast for how much Amazon Web Services predicts that you will use over the forecast time period that...

**x-amz-target-awsinsights-index-service-list-cost-allocation-tags** — Manage x amz target awsinsights index service list cost allocation tags

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-list-cost-allocation-tags` — Get a list of cost allocation tags. All inputs in the API are optional and serve as filters. By default, all cost...

**x-amz-target-awsinsights-index-service-list-cost-category-definitions** — Manage x amz target awsinsights index service list cost category definitions

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-list-cost-category-definitions` — Returns the name, Amazon Resource Name (ARN), <code>NumberOfRules</code> and effective dates of all Cost Categories...

**x-amz-target-awsinsights-index-service-list-savings-plans-purchase-recommendation-generation** — Manage x amz target awsinsights index service list savings plans purchase recommendation generation

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-list-savings-plans-purchase-recommendation-generation` — Retrieves a list of your historical recommendation generations within the past 30 days.

**x-amz-target-awsinsights-index-service-list-tags-for-resource** — Manage x amz target awsinsights index service list tags for resource

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-list-tags-for-resource` — Returns a list of resource tags associated with the resource specified by the Amazon Resource Name (ARN).

**x-amz-target-awsinsights-index-service-provide-anomaly-feedback** — Manage x amz target awsinsights index service provide anomaly feedback

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-provide-anomaly-feedback` — Modifies the feedback property of a given cost anomaly.

**x-amz-target-awsinsights-index-service-start-savings-plans-purchase-recommendation-generation** — Manage x amz target awsinsights index service start savings plans purchase recommendation generation

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-start-savings-plans-purchase-recommendation-generation` — <p>Requests a Savings Plans recommendation generation. This enables you to calculate a fresh set of Savings Plans...

**x-amz-target-awsinsights-index-service-tag-resource** — Manage x amz target awsinsights index service tag resource

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-tag-resource` — <p>An API operation for adding one or more tags (key-value pairs) to a resource.</p> <p>You can use the...

**x-amz-target-awsinsights-index-service-untag-resource** — Manage x amz target awsinsights index service untag resource

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-untag-resource` — Removes one or more tags from a resource. Specify only tag keys in your request. Don't specify the value.

**x-amz-target-awsinsights-index-service-update-anomaly-monitor** — Manage x amz target awsinsights index service update anomaly monitor

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-update-anomaly-monitor` — Updates an existing cost anomaly monitor. The changes made are applied going forward, and doesn't change anomalies...

**x-amz-target-awsinsights-index-service-update-anomaly-subscription** — Manage x amz target awsinsights index service update anomaly subscription

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-update-anomaly-subscription` — Updates an existing cost anomaly monitor subscription.

**x-amz-target-awsinsights-index-service-update-cost-allocation-tags-status** — Manage x amz target awsinsights index service update cost allocation tags status

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-update-cost-allocation-tags-status` — Updates status for cost allocation tags in bulk, with maximum batch size of 20. If the tag status that's updated is...

**x-amz-target-awsinsights-index-service-update-cost-category-definition** — Manage x amz target awsinsights index service update cost category definition

- `aws-pp-pp-cli x-amz-target-awsinsights-index-service-update-cost-category-definition` — Updates an existing Cost Category. Changes made to the Cost Category rules will be used to categorize the current...

**x-amz-target-awssupport-20130415-add-attachments-to-set** — Manage x amz target awssupport 20130415 add attachments to set

- `aws-pp-pp-cli x-amz-target-awssupport-20130415-add-attachments-to-set` — <p>Adds one or more attachments to an attachment set. </p> <p>An attachment set is a temporary container for...

**x-amz-target-awssupport-20130415-add-communication-to-case** — Manage x amz target awssupport 20130415 add communication to case

- `aws-pp-pp-cli x-amz-target-awssupport-20130415-add-communication-to-case` — <p>Adds additional customer communication to an Amazon Web Services Support case. Use the <code>caseId</code>...

**x-amz-target-awssupport-20130415-create-case** — Manage x amz target awssupport 20130415 create case

- `aws-pp-pp-cli x-amz-target-awssupport-20130415-create-case` — <p>Creates a case in the Amazon Web Services Support Center. This operation is similar to how you create a case in...

**x-amz-target-awssupport-20130415-describe-attachment** — Manage x amz target awssupport 20130415 describe attachment

- `aws-pp-pp-cli x-amz-target-awssupport-20130415-describe-attachment` — <p>Returns the attachment that has the specified ID. Attachments can include screenshots, error logs, or other files...

**x-amz-target-awssupport-20130415-describe-cases** — Manage x amz target awssupport 20130415 describe cases

- `aws-pp-pp-cli x-amz-target-awssupport-20130415-describe-cases` — <p>Returns a list of cases that you specify by passing one or more case IDs. You can use the <code>afterTime</code>...

**x-amz-target-awssupport-20130415-describe-communications** — Manage x amz target awssupport 20130415 describe communications

- `aws-pp-pp-cli x-amz-target-awssupport-20130415-describe-communications` — <p>Returns communications and attachments for one or more support cases. Use the <code>afterTime</code> and...

**x-amz-target-awssupport-20130415-describe-services** — Manage x amz target awssupport 20130415 describe services

- `aws-pp-pp-cli x-amz-target-awssupport-20130415-describe-services` — <p>Returns the current list of Amazon Web Services services and a list of service categories for each service. You...

**x-amz-target-awssupport-20130415-describe-severity-levels** — Manage x amz target awssupport 20130415 describe severity levels

- `aws-pp-pp-cli x-amz-target-awssupport-20130415-describe-severity-levels` — <p>Returns the list of severity levels that you can assign to a support case. The severity level for a case is also...

**x-amz-target-awssupport-20130415-describe-trusted-advisor-check-refresh-statuses** — Manage x amz target awssupport 20130415 describe trusted advisor check refresh statuses

- `aws-pp-pp-cli x-amz-target-awssupport-20130415-describe-trusted-advisor-check-refresh-statuses` — <p>Returns the refresh status of the Trusted Advisor checks that have the specified check IDs. You can get the check...

**x-amz-target-awssupport-20130415-describe-trusted-advisor-check-result** — Manage x amz target awssupport 20130415 describe trusted advisor check result

- `aws-pp-pp-cli x-amz-target-awssupport-20130415-describe-trusted-advisor-check-result` — <p>Returns the results of the Trusted Advisor check that has the specified check ID. You can get the check IDs by...

**x-amz-target-awssupport-20130415-describe-trusted-advisor-check-summaries** — Manage x amz target awssupport 20130415 describe trusted advisor check summaries

- `aws-pp-pp-cli x-amz-target-awssupport-20130415-describe-trusted-advisor-check-summaries` — <p>Returns the results for the Trusted Advisor check summaries for the check IDs that you specified. You can get the...

**x-amz-target-awssupport-20130415-describe-trusted-advisor-checks** — Manage x amz target awssupport 20130415 describe trusted advisor checks

- `aws-pp-pp-cli x-amz-target-awssupport-20130415-describe-trusted-advisor-checks` — <p>Returns information about all available Trusted Advisor checks, including the name, ID, category, description,...

**x-amz-target-awssupport-20130415-refresh-trusted-advisor-check** — Manage x amz target awssupport 20130415 refresh trusted advisor check

- `aws-pp-pp-cli x-amz-target-awssupport-20130415-refresh-trusted-advisor-check` — <p>Refreshes the Trusted Advisor check that you specify using the check ID. You can get the check IDs by calling the...

**x-amz-target-awssupport-20130415-resolve-case** — Manage x amz target awssupport 20130415 resolve case

- `aws-pp-pp-cli x-amz-target-awssupport-20130415-resolve-case` — <p>Resolves a support case. This operation takes a <code>caseId</code> and returns the initial and final state of...

**x-amz-target-service-quotas-v20190624-associate-service-quota-template** — Manage x amz target service quotas v20190624 associate service quota template

- `aws-pp-pp-cli x-amz-target-service-quotas-v20190624-associate-service-quota-template` — Associates your quota request template with your organization. When a new account is created in your organization,...

**x-amz-target-service-quotas-v20190624-delete-service-quota-increase-request-from-template** — Manage x amz target service quotas v20190624 delete service quota increase request from template

- `aws-pp-pp-cli x-amz-target-service-quotas-v20190624-delete-service-quota-increase-request-from-template` — Deletes the quota increase request for the specified quota from your quota request template.

**x-amz-target-service-quotas-v20190624-disassociate-service-quota-template** — Manage x amz target service quotas v20190624 disassociate service quota template

- `aws-pp-pp-cli x-amz-target-service-quotas-v20190624-disassociate-service-quota-template` — Disables your quota request template. After a template is disabled, the quota increase requests in the template are...

**x-amz-target-service-quotas-v20190624-get-association-for-service-quota-template** — Manage x amz target service quotas v20190624 get association for service quota template

- `aws-pp-pp-cli x-amz-target-service-quotas-v20190624-get-association-for-service-quota-template` — Retrieves the status of the association for the quota request template.

**x-amz-target-service-quotas-v20190624-get-awsdefault-service-quota** — Manage x amz target service quotas v20190624 get awsdefault service quota

- `aws-pp-pp-cli x-amz-target-service-quotas-v20190624-get-awsdefault-service-quota` — Retrieves the default value for the specified quota. The default value does not reflect any quota increases.

**x-amz-target-service-quotas-v20190624-get-requested-service-quota-change** — Manage x amz target service quotas v20190624 get requested service quota change

- `aws-pp-pp-cli x-amz-target-service-quotas-v20190624-get-requested-service-quota-change` — Retrieves information about the specified quota increase request.

**x-amz-target-service-quotas-v20190624-get-service-quota** — Manage x amz target service quotas v20190624 get service quota

- `aws-pp-pp-cli x-amz-target-service-quotas-v20190624-get-service-quota` — Retrieves the applied quota value for the specified quota. For some quotas, only the default values are available....

**x-amz-target-service-quotas-v20190624-get-service-quota-increase-request-from-template** — Manage x amz target service quotas v20190624 get service quota increase request from template

- `aws-pp-pp-cli x-amz-target-service-quotas-v20190624-get-service-quota-increase-request-from-template` — Retrieves information about the specified quota increase request in your quota request template.

**x-amz-target-service-quotas-v20190624-list-awsdefault-service-quotas** — Manage x amz target service quotas v20190624 list awsdefault service quotas

- `aws-pp-pp-cli x-amz-target-service-quotas-v20190624-list-awsdefault-service-quotas` — Lists the default values for the quotas for the specified AWS service. A default value does not reflect any quota...

**x-amz-target-service-quotas-v20190624-list-requested-service-quota-change-history** — Manage x amz target service quotas v20190624 list requested service quota change history

- `aws-pp-pp-cli x-amz-target-service-quotas-v20190624-list-requested-service-quota-change-history` — Retrieves the quota increase requests for the specified service.

**x-amz-target-service-quotas-v20190624-list-requested-service-quota-change-history-by-quota** — Manage x amz target service quotas v20190624 list requested service quota change history by quota

- `aws-pp-pp-cli x-amz-target-service-quotas-v20190624-list-requested-service-quota-change-history-by-quota` — Retrieves the quota increase requests for the specified quota.

**x-amz-target-service-quotas-v20190624-list-service-quota-increase-requests-in-template** — Manage x amz target service quotas v20190624 list service quota increase requests in template

- `aws-pp-pp-cli x-amz-target-service-quotas-v20190624-list-service-quota-increase-requests-in-template` — Lists the quota increase requests in the specified quota request template.

**x-amz-target-service-quotas-v20190624-list-service-quotas** — Manage x amz target service quotas v20190624 list service quotas

- `aws-pp-pp-cli x-amz-target-service-quotas-v20190624-list-service-quotas` — Lists the applied quota values for the specified AWS service. For some quotas, only the default values are...

**x-amz-target-service-quotas-v20190624-list-services** — Manage x amz target service quotas v20190624 list services

- `aws-pp-pp-cli x-amz-target-service-quotas-v20190624-list-services` — Lists the names and codes for the services integrated with Service Quotas.

**x-amz-target-service-quotas-v20190624-list-tags-for-resource** — Manage x amz target service quotas v20190624 list tags for resource

- `aws-pp-pp-cli x-amz-target-service-quotas-v20190624-list-tags-for-resource` — Returns a list of the tags assigned to the specified applied quota.

**x-amz-target-service-quotas-v20190624-put-service-quota-increase-request-into-template** — Manage x amz target service quotas v20190624 put service quota increase request into template

- `aws-pp-pp-cli x-amz-target-service-quotas-v20190624-put-service-quota-increase-request-into-template` — Adds a quota increase request to your quota request template.

**x-amz-target-service-quotas-v20190624-request-service-quota-increase** — Manage x amz target service quotas v20190624 request service quota increase

- `aws-pp-pp-cli x-amz-target-service-quotas-v20190624-request-service-quota-increase` — Submits a quota increase request for the specified quota.

**x-amz-target-service-quotas-v20190624-tag-resource** — Manage x amz target service quotas v20190624 tag resource

- `aws-pp-pp-cli x-amz-target-service-quotas-v20190624-tag-resource` — Adds tags to the specified applied quota. You can include one or more tags to add to the quota.

**x-amz-target-service-quotas-v20190624-untag-resource** — Manage x amz target service quotas v20190624 untag resource

- `aws-pp-pp-cli x-amz-target-service-quotas-v20190624-untag-resource` — Removes tags from the specified applied quota. You can specify one or more tags to remove.


### Finding the right command

When you know what you want to do but not which command does it, ask the CLI directly:

```bash
aws-pp-pp-cli which "<capability in your own words>"
```

`which` resolves a natural-language capability query to the best matching command from this CLI's curated feature index. Exit code `0` means at least one match; exit code `2` means no confident match — fall back to `--help` or use a narrower query.

## Auth Setup
Run `aws-pp-pp-cli auth setup` to print the URL and steps for getting a key (add `--launch` to open the URL). Then set:

```bash
export SERVICE_QUOTAS_HMAC="<your-key>"
```

Or persist it in `~/.config/aws-pp-pp-cli/config.toml`.

Run `aws-pp-pp-cli doctor` to verify setup.

## Agent Mode

Add `--agent` to any command. Expands to: `--json --compact --no-input --no-color --yes`.

- **Pipeable** — JSON on stdout, errors on stderr
- **Filterable** — `--select` keeps a subset of fields. Dotted paths descend into nested structures; arrays traverse element-wise. Critical for keeping context small on verbose APIs:

  ```bash
  aws-pp-pp-cli x-amz-target-awsinsights-index-service-create-anomaly-monitor --agent --select id,name,status
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
aws-pp-pp-cli feedback "the --since flag is inclusive but docs say exclusive"
aws-pp-pp-cli feedback --stdin < notes.txt
aws-pp-pp-cli feedback list --json --limit 10
```

Entries are stored locally at `~/.aws-pp-pp-cli/feedback.jsonl`. They are never POSTed unless `AWS_PP_FEEDBACK_ENDPOINT` is set AND either `--send` is passed or `AWS_PP_FEEDBACK_AUTO_SEND=true`. Default behavior is local-only.

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
aws-pp-pp-cli profile save briefing --json
aws-pp-pp-cli --profile briefing x-amz-target-awsinsights-index-service-create-anomaly-monitor
aws-pp-pp-cli profile list --json
aws-pp-pp-cli profile show briefing
aws-pp-pp-cli profile delete briefing --yes
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

1. **Empty, `help`, or `--help`** → show `aws-pp-pp-cli --help` output
2. **Starts with `install`** → ends with `mcp` → MCP installation; otherwise → see Prerequisites above
3. **Anything else** → Direct Use (execute as CLI command with `--agent`)

## MCP Server Installation

Install the MCP binary from this CLI's published public-library entry or pre-built release, then register it:

```bash
claude mcp add aws-pp-pp-mcp -- aws-pp-pp-mcp
```

Verify: `claude mcp list`

## Direct Use

1. Check if installed: `which aws-pp-pp-cli`
   If not found, offer to install (see Prerequisites at the top of this skill).
2. Match the user query to the best command from the Unique Capabilities and Command Reference above.
3. Execute with the `--agent` flag:
   ```bash
   aws-pp-pp-cli <command> [subcommand] [args] --agent
   ```
4. If ambiguous, drill into subcommand help: `aws-pp-pp-cli <command> --help`.
