variable "bucket_location" {
  description = "Location of the GCS bucket"
  default = "US"
}

variable project {
  description = "project name"
  
}

variable "bucket_project" {
  description = "Project for the GCS bucket"
 
}

variable "bucket_storage_class" {
  description = "Storage class of the GCS bucket"
  default = "NEARLINE"
}

variable "gcs_versioning_enabled" {
  description = "To enable object versioning"
  default     = false
}

variable "type" {
  description = "The type of the action of this Lifecycle Rule. Supported values include: Delete and SetStorageClass"
  default     = "Delete"
}

variable "lifecycle_rule_condition_age" {
  description = "Minimum age of an object in days to satisfy this condition"
  default     = 180
}

variable "object_file"{
  type        = string
  description = "object File Location"
}

/*variable "lifecycle_rule_condition_is_live" {
  description = "Relevant only for versioned objects. If true, this condition matches live objects, archived objects otherwise."
  default     = false
}*/

##end
