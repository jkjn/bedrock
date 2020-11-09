

resource "aws_instance" "bedrock" {
    ami = data.aws_ami.bedrock.id
    instance_type = "t3.large"
}