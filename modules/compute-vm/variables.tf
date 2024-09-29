variable "name" {
  description = "The name of the vm."
  type        = string
}

variable "project_id" {
  description = "The ID of the project to create the vm in."
  type        = string
}

variable "region" {
  description = "The region of the vm."
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The zone of the vm."
  type        = string
  default     = "us-central1-a"
}

variable "machine_type" {
  description = "The machine_type of the vm."
  type        = string
  default     = "e2-micro"
}

variable "labels" {
  description = "A set of key/value label pairs to assign to the vm."
  type        = map(string)
  default     = null
}

variable "iam_members" {
  description = "The list of IAM members to grant vm access."
  type = list(object({
    role   = string
    member = string
  }))
  default = []
}