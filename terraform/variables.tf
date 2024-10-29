variable "project_id" {
  type        = string
  description = "GCPのプロジェクトID"
}

variable "region" {
  type        = string
  description = "GCPのリージョン"
  default     = "asia-northeast1"
}

variable "bucket_name" {
  type        = string
  description = "作成するGCSバケットの名前"
}
