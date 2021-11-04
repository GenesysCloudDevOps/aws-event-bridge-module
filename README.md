This Terraform module installs the Genesys Cloud AWS EventBridge integration into a Genesys Cloud org.

## Usage

```hcl
module "AwsEventBridgeIntegration" {
   source             = "git::https://github.com/GenesysCloudDevOps/aws-event-bridge-module.git?ref=v0.0.1"
   aws_account_id   = "335611188682"
   aws_account_region   = "us-west-2"
   event_source_suffix     = "-sample-eb"
   topic_filters = ["v2.audits.entitytype.{id}.entityid.{id}","v2.analytics.flow.{id}.aggregates"]
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="provider_terraform"></a>[terraform](https://www.terraform.io/) | >= 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_genesyscloud"></a> [genesyscloud](https://registry.terraform.io/providers/MyPureCloud/genesyscloud/latest) | >= 0.13.3 |



## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| <a name="integration_name"></a> [integration_name](#integration\_name)  |  Name of the Genesys Cloud Integration to be created| `string` | yes |
| <a name="data_action_name"></a> [data_action_name](#data\_action\_name) |  Name of the Genesys Cloud Data Action to be created | `string` | yes |
| <a name="classifier_url"></a>   [context](#classifier\_url) | REST API endpoint | `string` | yes |
| <a name="classifier_api_key"></a>   [context](#classifier\_api\_key) | API Key that will be passed to the endpoint for authentication | `string` | yes |