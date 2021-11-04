resource "genesyscloud_integration" "AwsEventBridgeIntegration" {
  intended_state   = "ENABLED"
  integration_type = "amazon-eventbridge-source"
  config {
    name = "Amazon EventBridge Source"
    properties = jsonencode({
      "eventSourceSuffix" : var.event_source_suffix,
      "awsAccountId" : var.aws_account_id,
      "eventFilter" : var.topic_filters,
      "awsAccountRegion" : var.aws_account_region
    })
    advanced = jsonencode({})
    notes    = "AWS EventBridge Integration"
  }
}
