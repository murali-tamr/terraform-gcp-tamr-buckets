variable "project_id" {
  type        = string
  description = "project id for the buckets to be placed into"
}

variable "bucket_name_prefix" {
  default     = ""
  type        = string
  description = "prefix to name the buckets"
}

variable "tamr_bucket_name_suffix" {
  default     = "-tamr-home"
  type        = string
  description = "suffix for the name of the Tamr bucket"
}

variable "dataproc_bucket_name_suffix" {
  default     = "-dataproc-home"
  type        = string
  description = "suffix for the name of the dataproc bucket"
}

variable "labels" {
  type        = map(string)
  description = "labels to be attached to the bucket"

  default = {
    product = "external_tamr"
  }
}

variable "bucket_locations" {
  type        = string
  description = "Location for the buckets, default is `US`"
  default     = "US"
}

variable "bucket_write_members" {
  type        = list(string)
  description = "The list of members to give write access to dataproc and tamr home buckets"
  default     = []
}

variable "bucket_read_members" {
  type        = list(string)
  description = "The list of members to give write access to dataproc and tamr home buckets"
  default     = []
}

variable "dataproc_bucket_write_members" {
  type        = list(string)
  description = "The list of members to give write access to dataproc bucket"
  default     = []
}

variable "dataproc_bucket_read_members" {
  type        = list(string)
  description = "The list of members to give read access to dataproc bucket"
  default     = []
}

variable "tamr_home_bucket_write_members" {
  type        = list(string)
  description = "The list of members to give write access to tamr home bucket"
  default     = []
}

variable "tamr_home_bucket_read_members" {
  type        = list(string)
  description = "The list of members to give read access to tamr home bucket"
  default     = []
}

variable "force_destroy" {
  default     = false
  type        = bool
  description = "force destroy potentially persistent buckets"
}
