variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
  default     = "sandbox-smm"

}

variable "bucket_name" {
  description = "Name of the buckets to create."
  type        = string
  default     = "sandbox-smm-static-website"
}
