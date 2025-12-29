resource "aws_ebs_volume" "vulnerable_volume" {
  availability_zone = "us-east-1a"
  size              = 40
  
  # Missing encryption
  encrypted = false
  # Checkov will flag: CKV_AWS_3
  
  tags = {
    Name = "unencrypted-volume"
  }
}
