variable "aws_account_id" {
  type        = string
  description = "The 12 digit AWS account ID where the event source will be made available for an event bus."
}

variable "aws_account_region" {
  type        = string
  description = "Name of the data action that will appear in the Genesys Cloud Admin UI"
}

variable "event_source_suffix" {
  type        = string
  description = "A unique name appended to the Event Source in the AWS account. Maximum of 64 characters consisting of lower/upper case letters, numbers, ., -, _."
}

variable "topic_filters" {
  type        = list(string)
  description = "List of notification topics to send to EventBridge"
}

variable "integration_name" {
  type        = string
  description = "Name of the integration"
}
