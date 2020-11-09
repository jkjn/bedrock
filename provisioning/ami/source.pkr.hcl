source "amazon-ebs" "bedrock" {
    ami_name = "bedrock"
    ami_description = ""
    instance_type = "t3.small"
    region = var.region
    iam_instance_profile = var.instance_profile

    ssh_username = "ec2-user"

    tags = {}
}
