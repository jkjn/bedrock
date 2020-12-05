locals {
    tags = {}
}
resource "aws_s3_bucket" "backup" {
    bucket = "minecraft-data-backup-${var.env}-${data.aws_caller_identity.current.id}"

    versioning {
        enabled = true
    }

    lifecycle_rule {
        enabled = true

        noncurrent_version_transition {
            days          = 30
            storage_class = "STANDARD_IA"
        }

        noncurrent_version_transition {
            days          = 60
            storage_class = "GLACIER"
        }

        noncurrent_version_expiration {
            days = 90
        }
    }

    tags = merge(
        var.tags, 
        local.tags
    )    
}
