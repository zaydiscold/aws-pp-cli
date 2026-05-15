# Aws Pp CLI

Combined CLI for multiple API services

Printed by [@zaydiscold](https://github.com/zaydiscold) (zayd).

## Install

The recommended path installs both the `aws-pp-pp-cli` binary and the `pp-aws-pp` agent skill in one shot:

```bash
npx -y @mvanhorn/printing-press install aws-pp
```

For CLI only (no skill):

```bash
npx -y @mvanhorn/printing-press install aws-pp --cli-only
```


### Without Node

The generated install path is category-agnostic until this CLI is published. If `npx` is not available before publish, install Node or use the category-specific Go fallback from the public-library entry after publish.

### Pre-built binary

Download a pre-built binary for your platform from the [latest release](https://github.com/mvanhorn/printing-press-library/releases/tag/aws-pp-current). On macOS, clear the Gatekeeper quarantine: `xattr -d com.apple.quarantine <binary>`. On Unix, mark it executable: `chmod +x <binary>`.

<!-- pp-hermes-install-anchor -->
## Install for Hermes

From the Hermes CLI:

```bash
hermes skills install mvanhorn/printing-press-library/cli-skills/pp-aws-pp --force
```

Inside a Hermes chat session:

```bash
/skills install mvanhorn/printing-press-library/cli-skills/pp-aws-pp --force
```

## Install for OpenClaw

Tell your OpenClaw agent (copy this):

```
Install the pp-aws-pp skill from https://github.com/mvanhorn/printing-press-library/tree/main/cli-skills/pp-aws-pp. The skill defines how its required CLI can be installed.
```

## Quick Start

### 1. Install

See [Install](#install) above.

### 2. Set Up Credentials

Get your API key from your API provider's developer portal. The key typically looks like a long alphanumeric string.

```bash
export SERVICE_QUOTAS_HMAC="<paste-your-key>"
```

You can also persist this in your config file at `~/.config/aws-pp-pp-cli/config.toml`.

### 3. Verify Setup

```bash
aws-pp-pp-cli doctor
```

This checks your configuration and credentials.

### 4. Try Your First Command

```bash
aws-pp-pp-cli x-amz-target-awsinsights-index-service-create-anomaly-monitor
```

## Usage

Run `aws-pp-pp-cli --help` for the full command reference and flag list.

## Commands

### x-amz-target-awsinsights-index-service-create-anomaly-monitor

Manage x amz target awsinsights index service create anomaly monitor

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-create-anomaly-monitor create-anomaly-monitor`** - Creates a new cost anomaly detection monitor with the requested type and monitor specification.

### x-amz-target-awsinsights-index-service-create-anomaly-subscription

Manage x amz target awsinsights index service create anomaly subscription

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-create-anomaly-subscription create-anomaly-subscription`** - Adds an alert subscription to a cost anomaly detection monitor. You can use each subscription to define subscribers with email or SNS notifications. Email subscribers can set an absolute or percentage threshold and a time frequency for receiving notifications.

### x-amz-target-awsinsights-index-service-create-cost-category-definition

Manage x amz target awsinsights index service create cost category definition

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-create-cost-category-definition create-cost-category-definition`** - Creates a new Cost Category with the requested name and rules.

### x-amz-target-awsinsights-index-service-delete-anomaly-monitor

Manage x amz target awsinsights index service delete anomaly monitor

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-delete-anomaly-monitor delete-anomaly-monitor`** - Deletes a cost anomaly monitor.

### x-amz-target-awsinsights-index-service-delete-anomaly-subscription

Manage x amz target awsinsights index service delete anomaly subscription

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-delete-anomaly-subscription delete-anomaly-subscription`** - Deletes a cost anomaly subscription.

### x-amz-target-awsinsights-index-service-delete-cost-category-definition

Manage x amz target awsinsights index service delete cost category definition

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-delete-cost-category-definition delete-cost-category-definition`** - Deletes a Cost Category. Expenses from this month going forward will no longer be categorized with this Cost Category.

### x-amz-target-awsinsights-index-service-describe-cost-category-definition

Manage x amz target awsinsights index service describe cost category definition

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-describe-cost-category-definition describe-cost-category-definition`** - <p>Returns the name, Amazon Resource Name (ARN), rules, definition, and effective dates of a Cost Category that's defined in the account.</p> <p>You have the option to use <code>EffectiveOn</code> to return a Cost Category that's active on a specific date. If there's no <code>EffectiveOn</code> specified, you see a Cost Category that's effective on the current date. If Cost Category is still effective, <code>EffectiveEnd</code> is omitted in the response. </p>

### x-amz-target-awsinsights-index-service-get-anomalies

Manage x amz target awsinsights index service get anomalies

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-anomalies get-anomalies`** - Retrieves all of the cost anomalies detected on your account during the time period that's specified by the <code>DateInterval</code> object. Anomalies are available for up to 90 days.

### x-amz-target-awsinsights-index-service-get-anomaly-monitors

Manage x amz target awsinsights index service get anomaly monitors

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-anomaly-monitors get-anomaly-monitors`** - Retrieves the cost anomaly monitor definitions for your account. You can filter using a list of cost anomaly monitor Amazon Resource Names (ARNs).

### x-amz-target-awsinsights-index-service-get-anomaly-subscriptions

Manage x amz target awsinsights index service get anomaly subscriptions

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-anomaly-subscriptions get-anomaly-subscriptions`** - Retrieves the cost anomaly subscription objects for your account. You can filter using a list of cost anomaly monitor Amazon Resource Names (ARNs).

### x-amz-target-awsinsights-index-service-get-cost-and-usage

Manage x amz target awsinsights index service get cost and usage

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-cost-and-usage get-cost-and-usage`** - <p>Retrieves cost and usage metrics for your account. You can specify which cost and usage-related metric that you want the request to return. For example, you can specify <code>BlendedCosts</code> or <code>UsageQuantity</code>. You can also filter and group your data by various dimensions, such as <code>SERVICE</code> or <code>AZ</code>, in a specific time range. For a complete list of valid dimensions, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html">GetDimensionValues</a> operation. Management account in an organization in Organizations have access to all member accounts.</p> <p>For information about filter limitations, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-limits.html">Quotas and restrictions</a> in the <i>Billing and Cost Management User Guide</i>.</p>

### x-amz-target-awsinsights-index-service-get-cost-and-usage-with-resources

Manage x amz target awsinsights index service get cost and usage with resources

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-cost-and-usage-with-resources get-cost-and-usage-with-resources`** - <p>Retrieves cost and usage metrics with resources for your account. You can specify which cost and usage-related metric, such as <code>BlendedCosts</code> or <code>UsageQuantity</code>, that you want the request to return. You can also filter and group your data by various dimensions, such as <code>SERVICE</code> or <code>AZ</code>, in a specific time range. For a complete list of valid dimensions, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html">GetDimensionValues</a> operation. Management account in an organization in Organizations have access to all member accounts. This API is currently available for the Amazon Elastic Compute Cloud – Compute service only.</p> <note> <p>This is an opt-in only feature. You can enable this feature from the Cost Explorer Settings page. For information about how to access the Settings page, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-access.html">Controlling Access for Cost Explorer</a> in the <i>Billing and Cost Management User Guide</i>.</p> </note>

### x-amz-target-awsinsights-index-service-get-cost-categories

Manage x amz target awsinsights index service get cost categories

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-cost-categories get-cost-categories`** - <p>Retrieves an array of Cost Category names and values incurred cost.</p> <note> <p>If some Cost Category names and values are not associated with any cost, they will not be returned by this API.</p> </note>

### x-amz-target-awsinsights-index-service-get-cost-forecast

Manage x amz target awsinsights index service get cost forecast

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-cost-forecast get-cost-forecast`** - Retrieves a forecast for how much Amazon Web Services predicts that you will spend over the forecast time period that you select, based on your past costs.

### x-amz-target-awsinsights-index-service-get-dimension-values

Manage x amz target awsinsights index service get dimension values

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-dimension-values get-dimension-values`** - Retrieves all available filter values for a specified filter over a period of time. You can search the dimension values for an arbitrary string.

### x-amz-target-awsinsights-index-service-get-reservation-coverage

Manage x amz target awsinsights index service get reservation coverage

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-reservation-coverage get-reservation-coverage`** - <p>Retrieves the reservation coverage for your account, which you can use to see how much of your Amazon Elastic Compute Cloud, Amazon ElastiCache, Amazon Relational Database Service, or Amazon Redshift usage is covered by a reservation. An organization's management account can see the coverage of the associated member accounts. This supports dimensions, Cost Categories, and nested expressions. For any time period, you can filter data about reservation usage by the following dimensions:</p> <ul> <li> <p>AZ</p> </li> <li> <p>CACHE_ENGINE</p> </li> <li> <p>DATABASE_ENGINE</p> </li> <li> <p>DEPLOYMENT_OPTION</p> </li> <li> <p>INSTANCE_TYPE</p> </li> <li> <p>LINKED_ACCOUNT</p> </li> <li> <p>OPERATING_SYSTEM</p> </li> <li> <p>PLATFORM</p> </li> <li> <p>REGION</p> </li> <li> <p>SERVICE</p> </li> <li> <p>TAG</p> </li> <li> <p>TENANCY</p> </li> </ul> <p>To determine valid values for a dimension, use the <code>GetDimensionValues</code> operation. </p>

### x-amz-target-awsinsights-index-service-get-reservation-purchase-recommendation

Manage x amz target awsinsights index service get reservation purchase recommendation

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-reservation-purchase-recommendation get-reservation-purchase-recommendation`** - <p>Gets recommendations for reservation purchases. These recommendations might help you to reduce your costs. Reservations provide a discounted hourly rate (up to 75%) compared to On-Demand pricing.</p> <p>Amazon Web Services generates your recommendations by identifying your On-Demand usage during a specific time period and collecting your usage into categories that are eligible for a reservation. After Amazon Web Services has these categories, it simulates every combination of reservations in each category of usage to identify the best number of each type of Reserved Instance (RI) to purchase to maximize your estimated savings. </p> <p>For example, Amazon Web Services automatically aggregates your Amazon EC2 Linux, shared tenancy, and c4 family usage in the US West (Oregon) Region and recommends that you buy size-flexible regional reservations to apply to the c4 family usage. Amazon Web Services recommends the smallest size instance in an instance family. This makes it easier to purchase a size-flexible Reserved Instance (RI). Amazon Web Services also shows the equal number of normalized units. This way, you can purchase any instance size that you want. For this example, your RI recommendation is for <code>c4.large</code> because that is the smallest size instance in the c4 instance family.</p>

### x-amz-target-awsinsights-index-service-get-reservation-utilization

Manage x amz target awsinsights index service get reservation utilization

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-reservation-utilization get-reservation-utilization`** - Retrieves the reservation utilization for your account. Management account in an organization have access to member accounts. You can filter data by dimensions in a time period. You can use <code>GetDimensionValues</code> to determine the possible dimension values. Currently, you can group only by <code>SUBSCRIPTION_ID</code>.

### x-amz-target-awsinsights-index-service-get-rightsizing-recommendation

Manage x amz target awsinsights index service get rightsizing recommendation

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-rightsizing-recommendation get-rightsizing-recommendation`** - <p>Creates recommendations that help you save cost by identifying idle and underutilized Amazon EC2 instances.</p> <p>Recommendations are generated to either downsize or terminate instances, along with providing savings detail and metrics. For more information about calculation and function, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-rightsizing.html">Optimizing Your Cost with Rightsizing Recommendations</a> in the <i>Billing and Cost Management User Guide</i>.</p>

### x-amz-target-awsinsights-index-service-get-savings-plans-coverage

Manage x amz target awsinsights index service get savings plans coverage

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-savings-plans-coverage get-savings-plans-coverage`** - <p>Retrieves the Savings Plans covered for your account. This enables you to see how much of your cost is covered by a Savings Plan. An organization’s management account can see the coverage of the associated member accounts. This supports dimensions, Cost Categories, and nested expressions. For any time period, you can filter data for Savings Plans usage with the following dimensions:</p> <ul> <li> <p> <code>LINKED_ACCOUNT</code> </p> </li> <li> <p> <code>REGION</code> </p> </li> <li> <p> <code>SERVICE</code> </p> </li> <li> <p> <code>INSTANCE_FAMILY</code> </p> </li> </ul> <p>To determine valid values for a dimension, use the <code>GetDimensionValues</code> operation.</p>

### x-amz-target-awsinsights-index-service-get-savings-plans-purchase-recommendation

Manage x amz target awsinsights index service get savings plans purchase recommendation

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-savings-plans-purchase-recommendation get-savings-plans-purchase-recommendation`** - Retrieves the Savings Plans recommendations for your account. First use <code>StartSavingsPlansPurchaseRecommendationGeneration</code> to generate a new set of recommendations, and then use <code>GetSavingsPlansPurchaseRecommendation</code> to retrieve them.

### x-amz-target-awsinsights-index-service-get-savings-plans-utilization

Manage x amz target awsinsights index service get savings plans utilization

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-savings-plans-utilization get-savings-plans-utilization`** - <p>Retrieves the Savings Plans utilization for your account across date ranges with daily or monthly granularity. Management account in an organization have access to member accounts. You can use <code>GetDimensionValues</code> in <code>SAVINGS_PLANS</code> to determine the possible dimension values.</p> <note> <p>You can't group by any dimension values for <code>GetSavingsPlansUtilization</code>.</p> </note>

### x-amz-target-awsinsights-index-service-get-savings-plans-utilization-details

Manage x amz target awsinsights index service get savings plans utilization details

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-savings-plans-utilization-details get-savings-plans-utilization-details`** - <p>Retrieves attribute data along with aggregate utilization and savings data for a given time period. This doesn't support granular or grouped data (daily/monthly) in response. You can't retrieve data by dates in a single response similar to <code>GetSavingsPlanUtilization</code>, but you have the option to make multiple calls to <code>GetSavingsPlanUtilizationDetails</code> by providing individual dates. You can use <code>GetDimensionValues</code> in <code>SAVINGS_PLANS</code> to determine the possible dimension values.</p> <note> <p> <code>GetSavingsPlanUtilizationDetails</code> internally groups data by <code>SavingsPlansArn</code>.</p> </note>

### x-amz-target-awsinsights-index-service-get-tags

Manage x amz target awsinsights index service get tags

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-tags get-tags`** - Queries for available tag keys and tag values for a specified period. You can search the tag values for an arbitrary string.

### x-amz-target-awsinsights-index-service-get-usage-forecast

Manage x amz target awsinsights index service get usage forecast

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-get-usage-forecast get-usage-forecast`** - Retrieves a forecast for how much Amazon Web Services predicts that you will use over the forecast time period that you select, based on your past usage.

### x-amz-target-awsinsights-index-service-list-cost-allocation-tags

Manage x amz target awsinsights index service list cost allocation tags

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-list-cost-allocation-tags list-cost-allocation-tags`** - Get a list of cost allocation tags. All inputs in the API are optional and serve as filters. By default, all cost allocation tags are returned.

### x-amz-target-awsinsights-index-service-list-cost-category-definitions

Manage x amz target awsinsights index service list cost category definitions

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-list-cost-category-definitions list-cost-category-definitions`** - Returns the name, Amazon Resource Name (ARN), <code>NumberOfRules</code> and effective dates of all Cost Categories defined in the account. You have the option to use <code>EffectiveOn</code> to return a list of Cost Categories that were active on a specific date. If there is no <code>EffectiveOn</code> specified, you’ll see Cost Categories that are effective on the current date. If Cost Category is still effective, <code>EffectiveEnd</code> is omitted in the response. <code>ListCostCategoryDefinitions</code> supports pagination. The request can have a <code>MaxResults</code> range up to 100.

### x-amz-target-awsinsights-index-service-list-savings-plans-purchase-recommendation-generation

Manage x amz target awsinsights index service list savings plans purchase recommendation generation

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-list-savings-plans-purchase-recommendation-generation list-savings-plans-purchase-recommendation-generation`** - Retrieves a list of your historical recommendation generations within the past 30 days.

### x-amz-target-awsinsights-index-service-list-tags-for-resource

Manage x amz target awsinsights index service list tags for resource

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-list-tags-for-resource list-tags-for-resource`** - Returns a list of resource tags associated with the resource specified by the Amazon Resource Name (ARN).

### x-amz-target-awsinsights-index-service-provide-anomaly-feedback

Manage x amz target awsinsights index service provide anomaly feedback

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-provide-anomaly-feedback provide-anomaly-feedback`** - Modifies the feedback property of a given cost anomaly.

### x-amz-target-awsinsights-index-service-start-savings-plans-purchase-recommendation-generation

Manage x amz target awsinsights index service start savings plans purchase recommendation generation

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-start-savings-plans-purchase-recommendation-generation start-savings-plans-purchase-recommendation-generation`** - <p>Requests a Savings Plans recommendation generation. This enables you to calculate a fresh set of Savings Plans recommendations that takes your latest usage data and current Savings Plans inventory into account. You can refresh Savings Plans recommendations up to three times daily for a consolidated billing family.</p> <note> <p> <code>StartSavingsPlansPurchaseRecommendationGeneration</code> has no request syntax because no input parameters are needed to support this operation.</p> </note>

### x-amz-target-awsinsights-index-service-tag-resource

Manage x amz target awsinsights index service tag resource

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-tag-resource tag-resource`** - <p>An API operation for adding one or more tags (key-value pairs) to a resource.</p> <p>You can use the <code>TagResource</code> operation with a resource that already has tags. If you specify a new tag key for the resource, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value you specify replaces the previous value for that tag.</p> <p>Although the maximum number of array members is 200, user-tag maximum is 50. The remaining are reserved for Amazon Web Services use.</p>

### x-amz-target-awsinsights-index-service-untag-resource

Manage x amz target awsinsights index service untag resource

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-untag-resource untag-resource`** - Removes one or more tags from a resource. Specify only tag keys in your request. Don't specify the value.

### x-amz-target-awsinsights-index-service-update-anomaly-monitor

Manage x amz target awsinsights index service update anomaly monitor

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-update-anomaly-monitor update-anomaly-monitor`** - Updates an existing cost anomaly monitor. The changes made are applied going forward, and doesn't change anomalies detected in the past.

### x-amz-target-awsinsights-index-service-update-anomaly-subscription

Manage x amz target awsinsights index service update anomaly subscription

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-update-anomaly-subscription update-anomaly-subscription`** - Updates an existing cost anomaly monitor subscription.

### x-amz-target-awsinsights-index-service-update-cost-allocation-tags-status

Manage x amz target awsinsights index service update cost allocation tags status

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-update-cost-allocation-tags-status update-cost-allocation-tags-status`** - Updates status for cost allocation tags in bulk, with maximum batch size of 20. If the tag status that's updated is the same as the existing tag status, the request doesn't fail. Instead, it doesn't have any effect on the tag status (for example, activating the active tag).

### x-amz-target-awsinsights-index-service-update-cost-category-definition

Manage x amz target awsinsights index service update cost category definition

- **`aws-pp-pp-cli x-amz-target-awsinsights-index-service-update-cost-category-definition update-cost-category-definition`** - Updates an existing Cost Category. Changes made to the Cost Category rules will be used to categorize the current month’s expenses and future expenses. This won’t change categorization for the previous months.

### x-amz-target-awssupport-20130415-add-attachments-to-set

Manage x amz target awssupport 20130415 add attachments to set

- **`aws-pp-pp-cli x-amz-target-awssupport-20130415-add-attachments-to-set add-attachments-to-set`** - <p>Adds one or more attachments to an attachment set. </p> <p>An attachment set is a temporary container for attachments that you add to a case or case communication. The set is available for 1 hour after it's created. The <code>expiryTime</code> returned in the response is when the set expires. </p> <note> <ul> <li> <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API. </p> </li> <li> <p>If you call the Amazon Web Services Support API from an account that doesn't have a Business, Enterprise On-Ramp, or Enterprise Support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p> </li> </ul> </note>

### x-amz-target-awssupport-20130415-add-communication-to-case

Manage x amz target awssupport 20130415 add communication to case

- **`aws-pp-pp-cli x-amz-target-awssupport-20130415-add-communication-to-case add-communication-to-case`** - <p>Adds additional customer communication to an Amazon Web Services Support case. Use the <code>caseId</code> parameter to identify the case to which to add communication. You can list a set of email addresses to copy on the communication by using the <code>ccEmailAddresses</code> parameter. The <code>communicationBody</code> value contains the text of the communication.</p> <note> <ul> <li> <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API. </p> </li> <li> <p>If you call the Amazon Web Services Support API from an account that doesn't have a Business, Enterprise On-Ramp, or Enterprise Support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p> </li> </ul> </note>

### x-amz-target-awssupport-20130415-create-case

Manage x amz target awssupport 20130415 create case

- **`aws-pp-pp-cli x-amz-target-awssupport-20130415-create-case create-case`** - <p>Creates a case in the Amazon Web Services Support Center. This operation is similar to how you create a case in the Amazon Web Services Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page.</p> <p>The Amazon Web Services Support API doesn't support requesting service limit increases. You can submit a service limit increase in the following ways: </p> <ul> <li> <p>Submit a request from the Amazon Web Services Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page.</p> </li> <li> <p>Use the Service Quotas <a href="https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_RequestServiceQuotaIncrease.html">RequestServiceQuotaIncrease</a> operation.</p> </li> </ul> <p>A successful <code>CreateCase</code> request returns an Amazon Web Services Support case number. You can use the <a>DescribeCases</a> operation and specify the case number to get existing Amazon Web Services Support cases. After you create a case, use the <a>AddCommunicationToCase</a> operation to add additional communication or attachments to an existing case.</p> <p>The <code>caseId</code> is separate from the <code>displayId</code> that appears in the <a href="https://console.aws.amazon.com/support">Amazon Web Services Support Center</a>. Use the <a>DescribeCases</a> operation to get the <code>displayId</code>.</p> <note> <ul> <li> <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API. </p> </li> <li> <p>If you call the Amazon Web Services Support API from an account that doesn't have a Business, Enterprise On-Ramp, or Enterprise Support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p> </li> </ul> </note>

### x-amz-target-awssupport-20130415-describe-attachment

Manage x amz target awssupport 20130415 describe attachment

- **`aws-pp-pp-cli x-amz-target-awssupport-20130415-describe-attachment describe-attachment`** - <p>Returns the attachment that has the specified ID. Attachments can include screenshots, error logs, or other files that describe your issue. Attachment IDs are generated by the case management system when you add an attachment to a case or case communication. Attachment IDs are returned in the <a>AttachmentDetails</a> objects that are returned by the <a>DescribeCommunications</a> operation.</p> <note> <ul> <li> <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API. </p> </li> <li> <p>If you call the Amazon Web Services Support API from an account that doesn't have a Business, Enterprise On-Ramp, or Enterprise Support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p> </li> </ul> </note>

### x-amz-target-awssupport-20130415-describe-cases

Manage x amz target awssupport 20130415 describe cases

- **`aws-pp-pp-cli x-amz-target-awssupport-20130415-describe-cases describe-cases`** - <p>Returns a list of cases that you specify by passing one or more case IDs. You can use the <code>afterTime</code> and <code>beforeTime</code> parameters to filter the cases by date. You can set values for the <code>includeResolvedCases</code> and <code>includeCommunications</code> parameters to specify how much information to return.</p> <p>The response returns the following in JSON format:</p> <ul> <li> <p>One or more <a href="https://docs.aws.amazon.com/awssupport/latest/APIReference/API_CaseDetails.html">CaseDetails</a> data types.</p> </li> <li> <p>One or more <code>nextToken</code> values, which specify where to paginate the returned records represented by the <code>CaseDetails</code> objects.</p> </li> </ul> <p>Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request might return an error.</p> <note> <ul> <li> <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API. </p> </li> <li> <p>If you call the Amazon Web Services Support API from an account that doesn't have a Business, Enterprise On-Ramp, or Enterprise Support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p> </li> </ul> </note>

### x-amz-target-awssupport-20130415-describe-communications

Manage x amz target awssupport 20130415 describe communications

- **`aws-pp-pp-cli x-amz-target-awssupport-20130415-describe-communications describe-communications`** - <p>Returns communications and attachments for one or more support cases. Use the <code>afterTime</code> and <code>beforeTime</code> parameters to filter by date. You can use the <code>caseId</code> parameter to restrict the results to a specific case.</p> <p>Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error.</p> <p>You can use the <code>maxResults</code> and <code>nextToken</code> parameters to control the pagination of the results. Set <code>maxResults</code> to the number of cases that you want to display on each page, and use <code>nextToken</code> to specify the resumption of pagination.</p> <note> <ul> <li> <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API. </p> </li> <li> <p>If you call the Amazon Web Services Support API from an account that doesn't have a Business, Enterprise On-Ramp, or Enterprise Support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p> </li> </ul> </note>

### x-amz-target-awssupport-20130415-describe-services

Manage x amz target awssupport 20130415 describe services

- **`aws-pp-pp-cli x-amz-target-awssupport-20130415-describe-services describe-services`** - <p>Returns the current list of Amazon Web Services services and a list of service categories for each service. You then use service names and categories in your <a>CreateCase</a> requests. Each Amazon Web Services service has its own set of categories.</p> <p>The service codes and category codes correspond to the values that appear in the <b>Service</b> and <b>Category</b> lists on the Amazon Web Services Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page. The values in those fields don't necessarily match the service codes and categories returned by the <code>DescribeServices</code> operation. Always use the service codes and categories that the <code>DescribeServices</code> operation returns, so that you have the most recent set of service and category codes.</p> <note> <ul> <li> <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API. </p> </li> <li> <p>If you call the Amazon Web Services Support API from an account that doesn't have a Business, Enterprise On-Ramp, or Enterprise Support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p> </li> </ul> </note>

### x-amz-target-awssupport-20130415-describe-severity-levels

Manage x amz target awssupport 20130415 describe severity levels

- **`aws-pp-pp-cli x-amz-target-awssupport-20130415-describe-severity-levels describe-severity-levels`** - <p>Returns the list of severity levels that you can assign to a support case. The severity level for a case is also a field in the <a>CaseDetails</a> data type that you include for a <a>CreateCase</a> request.</p> <note> <ul> <li> <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API. </p> </li> <li> <p>If you call the Amazon Web Services Support API from an account that doesn't have a Business, Enterprise On-Ramp, or Enterprise Support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p> </li> </ul> </note>

### x-amz-target-awssupport-20130415-describe-trusted-advisor-check-refresh-statuses

Manage x amz target awssupport 20130415 describe trusted advisor check refresh statuses

- **`aws-pp-pp-cli x-amz-target-awssupport-20130415-describe-trusted-advisor-check-refresh-statuses describe-trusted-advisor-check-refresh-statuses`** - <p>Returns the refresh status of the Trusted Advisor checks that have the specified check IDs. You can get the check IDs by calling the <a>DescribeTrustedAdvisorChecks</a> operation.</p> <p>Some checks are refreshed automatically, and you can't return their refresh statuses by using the <code>DescribeTrustedAdvisorCheckRefreshStatuses</code> operation. If you call this operation for these checks, you might see an <code>InvalidParameterValue</code> error.</p> <note> <ul> <li> <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API. </p> </li> <li> <p>If you call the Amazon Web Services Support API from an account that doesn't have a Business, Enterprise On-Ramp, or Enterprise Support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p> </li> </ul> </note> <p>To call the Trusted Advisor operations in the Amazon Web Services Support API, you must use the US East (N. Virginia) endpoint. Currently, the US West (Oregon) and Europe (Ireland) endpoints don't support the Trusted Advisor operations. For more information, see <a href="https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint">About the Amazon Web Services Support API</a> in the <i>Amazon Web Services Support User Guide</i>.</p>

### x-amz-target-awssupport-20130415-describe-trusted-advisor-check-result

Manage x amz target awssupport 20130415 describe trusted advisor check result

- **`aws-pp-pp-cli x-amz-target-awssupport-20130415-describe-trusted-advisor-check-result describe-trusted-advisor-check-result`** - <p>Returns the results of the Trusted Advisor check that has the specified check ID. You can get the check IDs by calling the <a>DescribeTrustedAdvisorChecks</a> operation.</p> <p>The response contains a <a>TrustedAdvisorCheckResult</a> object, which contains these three objects:</p> <ul> <li> <p> <a>TrustedAdvisorCategorySpecificSummary</a> </p> </li> <li> <p> <a>TrustedAdvisorResourceDetail</a> </p> </li> <li> <p> <a>TrustedAdvisorResourcesSummary</a> </p> </li> </ul> <p>In addition, the response contains these fields:</p> <ul> <li> <p> <b>status</b> - The alert status of the check can be <code>ok</code> (green), <code>warning</code> (yellow), <code>error</code> (red), or <code>not_available</code>.</p> </li> <li> <p> <b>timestamp</b> - The time of the last refresh of the check.</p> </li> <li> <p> <b>checkId</b> - The unique identifier for the check.</p> </li> </ul> <note> <ul> <li> <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API. </p> </li> <li> <p>If you call the Amazon Web Services Support API from an account that doesn't have a Business, Enterprise On-Ramp, or Enterprise Support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p> </li> </ul> </note> <p>To call the Trusted Advisor operations in the Amazon Web Services Support API, you must use the US East (N. Virginia) endpoint. Currently, the US West (Oregon) and Europe (Ireland) endpoints don't support the Trusted Advisor operations. For more information, see <a href="https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint">About the Amazon Web Services Support API</a> in the <i>Amazon Web Services Support User Guide</i>.</p>

### x-amz-target-awssupport-20130415-describe-trusted-advisor-check-summaries

Manage x amz target awssupport 20130415 describe trusted advisor check summaries

- **`aws-pp-pp-cli x-amz-target-awssupport-20130415-describe-trusted-advisor-check-summaries describe-trusted-advisor-check-summaries`** - <p>Returns the results for the Trusted Advisor check summaries for the check IDs that you specified. You can get the check IDs by calling the <a>DescribeTrustedAdvisorChecks</a> operation.</p> <p>The response contains an array of <a>TrustedAdvisorCheckSummary</a> objects.</p> <note> <ul> <li> <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API. </p> </li> <li> <p>If you call the Amazon Web Services Support API from an account that doesn't have a Business, Enterprise On-Ramp, or Enterprise Support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p> </li> </ul> </note> <p>To call the Trusted Advisor operations in the Amazon Web Services Support API, you must use the US East (N. Virginia) endpoint. Currently, the US West (Oregon) and Europe (Ireland) endpoints don't support the Trusted Advisor operations. For more information, see <a href="https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint">About the Amazon Web Services Support API</a> in the <i>Amazon Web Services Support User Guide</i>.</p>

### x-amz-target-awssupport-20130415-describe-trusted-advisor-checks

Manage x amz target awssupport 20130415 describe trusted advisor checks

- **`aws-pp-pp-cli x-amz-target-awssupport-20130415-describe-trusted-advisor-checks describe-trusted-advisor-checks`** - <p>Returns information about all available Trusted Advisor checks, including the name, ID, category, description, and metadata. You must specify a language code.</p> <p>The response contains a <a>TrustedAdvisorCheckDescription</a> object for each check. You must set the Amazon Web Services Region to us-east-1.</p> <note> <ul> <li> <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API. </p> </li> <li> <p>If you call the Amazon Web Services Support API from an account that doesn't have a Business, Enterprise On-Ramp, or Enterprise Support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p> </li> <li> <p>The names and descriptions for Trusted Advisor checks are subject to change. We recommend that you specify the check ID in your code to uniquely identify a check.</p> </li> </ul> </note> <p>To call the Trusted Advisor operations in the Amazon Web Services Support API, you must use the US East (N. Virginia) endpoint. Currently, the US West (Oregon) and Europe (Ireland) endpoints don't support the Trusted Advisor operations. For more information, see <a href="https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint">About the Amazon Web Services Support API</a> in the <i>Amazon Web Services Support User Guide</i>.</p>

### x-amz-target-awssupport-20130415-refresh-trusted-advisor-check

Manage x amz target awssupport 20130415 refresh trusted advisor check

- **`aws-pp-pp-cli x-amz-target-awssupport-20130415-refresh-trusted-advisor-check refresh-trusted-advisor-check`** - <p>Refreshes the Trusted Advisor check that you specify using the check ID. You can get the check IDs by calling the <a>DescribeTrustedAdvisorChecks</a> operation.</p> <p>Some checks are refreshed automatically. If you call the <code>RefreshTrustedAdvisorCheck</code> operation to refresh them, you might see the <code>InvalidParameterValue</code> error.</p> <p>The response contains a <a>TrustedAdvisorCheckRefreshStatus</a> object.</p> <note> <ul> <li> <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API. </p> </li> <li> <p>If you call the Amazon Web Services Support API from an account that doesn't have a Business, Enterprise On-Ramp, or Enterprise Support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p> </li> </ul> </note> <p>To call the Trusted Advisor operations in the Amazon Web Services Support API, you must use the US East (N. Virginia) endpoint. Currently, the US West (Oregon) and Europe (Ireland) endpoints don't support the Trusted Advisor operations. For more information, see <a href="https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint">About the Amazon Web Services Support API</a> in the <i>Amazon Web Services Support User Guide</i>.</p>

### x-amz-target-awssupport-20130415-resolve-case

Manage x amz target awssupport 20130415 resolve case

- **`aws-pp-pp-cli x-amz-target-awssupport-20130415-resolve-case resolve-case`** - <p>Resolves a support case. This operation takes a <code>caseId</code> and returns the initial and final state of the case.</p> <note> <ul> <li> <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API. </p> </li> <li> <p>If you call the Amazon Web Services Support API from an account that doesn't have a Business, Enterprise On-Ramp, or Enterprise Support plan, the <code>SubscriptionRequiredException</code> error message appears. For information about changing your support plan, see <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a>.</p> </li> </ul> </note>

### x-amz-target-service-quotas-v20190624-associate-service-quota-template

Manage x amz target service quotas v20190624 associate service quota template

- **`aws-pp-pp-cli x-amz-target-service-quotas-v20190624-associate-service-quota-template associate-service-quota-template`** - Associates your quota request template with your organization. When a new account is created in your organization, the quota increase requests in the template are automatically applied to the account. You can add a quota increase request for any adjustable quota to your template.

### x-amz-target-service-quotas-v20190624-delete-service-quota-increase-request-from-template

Manage x amz target service quotas v20190624 delete service quota increase request from template

- **`aws-pp-pp-cli x-amz-target-service-quotas-v20190624-delete-service-quota-increase-request-from-template delete-service-quota-increase-request-from-template`** - Deletes the quota increase request for the specified quota from your quota request template.

### x-amz-target-service-quotas-v20190624-disassociate-service-quota-template

Manage x amz target service quotas v20190624 disassociate service quota template

- **`aws-pp-pp-cli x-amz-target-service-quotas-v20190624-disassociate-service-quota-template disassociate-service-quota-template`** - Disables your quota request template. After a template is disabled, the quota increase requests in the template are not applied to new accounts in your organization. Disabling a quota request template does not apply its quota increase requests.

### x-amz-target-service-quotas-v20190624-get-association-for-service-quota-template

Manage x amz target service quotas v20190624 get association for service quota template

- **`aws-pp-pp-cli x-amz-target-service-quotas-v20190624-get-association-for-service-quota-template get-association-for-service-quota-template`** - Retrieves the status of the association for the quota request template.

### x-amz-target-service-quotas-v20190624-get-awsdefault-service-quota

Manage x amz target service quotas v20190624 get awsdefault service quota

- **`aws-pp-pp-cli x-amz-target-service-quotas-v20190624-get-awsdefault-service-quota get-awsdefault-service-quota`** - Retrieves the default value for the specified quota. The default value does not reflect any quota increases.

### x-amz-target-service-quotas-v20190624-get-requested-service-quota-change

Manage x amz target service quotas v20190624 get requested service quota change

- **`aws-pp-pp-cli x-amz-target-service-quotas-v20190624-get-requested-service-quota-change get-requested-service-quota-change`** - Retrieves information about the specified quota increase request.

### x-amz-target-service-quotas-v20190624-get-service-quota

Manage x amz target service quotas v20190624 get service quota

- **`aws-pp-pp-cli x-amz-target-service-quotas-v20190624-get-service-quota get-service-quota`** - Retrieves the applied quota value for the specified quota. For some quotas, only the default values are available. If the applied quota value is not available for a quota, the quota is not retrieved.

### x-amz-target-service-quotas-v20190624-get-service-quota-increase-request-from-template

Manage x amz target service quotas v20190624 get service quota increase request from template

- **`aws-pp-pp-cli x-amz-target-service-quotas-v20190624-get-service-quota-increase-request-from-template get-service-quota-increase-request-from-template`** - Retrieves information about the specified quota increase request in your quota request template.

### x-amz-target-service-quotas-v20190624-list-awsdefault-service-quotas

Manage x amz target service quotas v20190624 list awsdefault service quotas

- **`aws-pp-pp-cli x-amz-target-service-quotas-v20190624-list-awsdefault-service-quotas list-awsdefault-service-quotas`** - Lists the default values for the quotas for the specified AWS service. A default value does not reflect any quota increases.

### x-amz-target-service-quotas-v20190624-list-requested-service-quota-change-history

Manage x amz target service quotas v20190624 list requested service quota change history

- **`aws-pp-pp-cli x-amz-target-service-quotas-v20190624-list-requested-service-quota-change-history list-requested-service-quota-change-history`** - Retrieves the quota increase requests for the specified service.

### x-amz-target-service-quotas-v20190624-list-requested-service-quota-change-history-by-quota

Manage x amz target service quotas v20190624 list requested service quota change history by quota

- **`aws-pp-pp-cli x-amz-target-service-quotas-v20190624-list-requested-service-quota-change-history-by-quota list-requested-service-quota-change-history-by-quota`** - Retrieves the quota increase requests for the specified quota.

### x-amz-target-service-quotas-v20190624-list-service-quota-increase-requests-in-template

Manage x amz target service quotas v20190624 list service quota increase requests in template

- **`aws-pp-pp-cli x-amz-target-service-quotas-v20190624-list-service-quota-increase-requests-in-template list-service-quota-increase-requests-in-template`** - Lists the quota increase requests in the specified quota request template.

### x-amz-target-service-quotas-v20190624-list-service-quotas

Manage x amz target service quotas v20190624 list service quotas

- **`aws-pp-pp-cli x-amz-target-service-quotas-v20190624-list-service-quotas list-service-quotas`** - Lists the applied quota values for the specified AWS service. For some quotas, only the default values are available. If the applied quota value is not available for a quota, the quota is not retrieved.

### x-amz-target-service-quotas-v20190624-list-services

Manage x amz target service quotas v20190624 list services

- **`aws-pp-pp-cli x-amz-target-service-quotas-v20190624-list-services list-services`** - Lists the names and codes for the services integrated with Service Quotas.

### x-amz-target-service-quotas-v20190624-list-tags-for-resource

Manage x amz target service quotas v20190624 list tags for resource

- **`aws-pp-pp-cli x-amz-target-service-quotas-v20190624-list-tags-for-resource list-tags-for-resource`** - Returns a list of the tags assigned to the specified applied quota.

### x-amz-target-service-quotas-v20190624-put-service-quota-increase-request-into-template

Manage x amz target service quotas v20190624 put service quota increase request into template

- **`aws-pp-pp-cli x-amz-target-service-quotas-v20190624-put-service-quota-increase-request-into-template put-service-quota-increase-request-into-template`** - Adds a quota increase request to your quota request template.

### x-amz-target-service-quotas-v20190624-request-service-quota-increase

Manage x amz target service quotas v20190624 request service quota increase

- **`aws-pp-pp-cli x-amz-target-service-quotas-v20190624-request-service-quota-increase request-service-quota-increase`** - Submits a quota increase request for the specified quota.

### x-amz-target-service-quotas-v20190624-tag-resource

Manage x amz target service quotas v20190624 tag resource

- **`aws-pp-pp-cli x-amz-target-service-quotas-v20190624-tag-resource tag-resource`** - Adds tags to the specified applied quota. You can include one or more tags to add to the quota.

### x-amz-target-service-quotas-v20190624-untag-resource

Manage x amz target service quotas v20190624 untag resource

- **`aws-pp-pp-cli x-amz-target-service-quotas-v20190624-untag-resource untag-resource`** - Removes tags from the specified applied quota. You can specify one or more tags to remove.


## Output Formats

```bash
# Human-readable table (default in terminal, JSON when piped)
aws-pp-pp-cli x-amz-target-awsinsights-index-service-create-anomaly-monitor

# JSON for scripting and agents
aws-pp-pp-cli x-amz-target-awsinsights-index-service-create-anomaly-monitor --json

# Filter to specific fields
aws-pp-pp-cli x-amz-target-awsinsights-index-service-create-anomaly-monitor --json --select id,name,status

# Dry run — show the request without sending
aws-pp-pp-cli x-amz-target-awsinsights-index-service-create-anomaly-monitor --dry-run

# Agent mode — JSON + compact + no prompts in one flag
aws-pp-pp-cli x-amz-target-awsinsights-index-service-create-anomaly-monitor --agent
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
npx skills add mvanhorn/printing-press-library/cli-skills/pp-aws-pp -g
```

Then invoke `/pp-aws-pp <query>` in Claude Code. The skill is the most efficient path — Claude Code drives the CLI directly without an MCP server in the middle.

<details>
<summary>Use as an MCP server in Claude Code (advanced)</summary>

If you'd rather register this CLI as an MCP server in Claude Code, install the MCP binary first:


Install the MCP binary from this CLI's published public-library entry or pre-built release.

Then register it:

```bash
claude mcp add aws-pp aws-pp-pp-mcp -e SERVICE_QUOTAS_HMAC=<your-key>
```

</details>

## Use with Claude Desktop

This CLI ships an [MCPB](https://github.com/modelcontextprotocol/mcpb) bundle — Claude Desktop's standard format for one-click MCP extension installs (no JSON config required).

To install:

1. Download the `.mcpb` for your platform from the [latest release](https://github.com/mvanhorn/printing-press-library/releases/tag/aws-pp-current).
2. Double-click the `.mcpb` file. Claude Desktop opens and walks you through the install.
3. Fill in `SERVICE_QUOTAS_HMAC` when Claude Desktop prompts you.

Requires Claude Desktop 1.0.0 or later. Pre-built bundles ship for macOS Apple Silicon (`darwin-arm64`) and Windows (`amd64`, `arm64`); for other platforms, use the manual config below.

<details>
<summary>Manual JSON config (advanced)</summary>

If you can't use the MCPB bundle (older Claude Desktop, unsupported platform), install the MCP binary and configure it manually.


Install the MCP binary from this CLI's published public-library entry or pre-built release.

Add to your Claude Desktop config (`~/Library/Application Support/Claude/claude_desktop_config.json`):

```json
{
  "mcpServers": {
    "aws-pp": {
      "command": "aws-pp-pp-mcp",
      "env": {
        "SERVICE_QUOTAS_HMAC": "<your-key>"
      }
    }
  }
}
```

</details>

## Health Check

```bash
aws-pp-pp-cli doctor
```

Verifies configuration, credentials, and connectivity to the API.

## Configuration

Config file: `~/.config/aws-pp-pp-cli/config.toml`

Static request headers can be configured under `headers`; per-command header overrides take precedence.

Environment variables:

| Name | Kind | Required | Description |
| --- | --- | --- | --- |
| `SERVICE_QUOTAS_HMAC` | per_call | Yes | Set to your API credential. |

## Troubleshooting
**Authentication errors (exit code 4)**
- Run `aws-pp-pp-cli doctor` to check credentials
- Verify the environment variable is set: `echo $SERVICE_QUOTAS_HMAC`
**Not found errors (exit code 3)**
- Check the resource ID is correct
- Run the `list` command to see available items

---

Generated by [CLI Printing Press](https://github.com/mvanhorn/cli-printing-press)
