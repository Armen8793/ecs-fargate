resource "aws_ecr_repository" "bdg" {
  name = "bdg-repo"
  image_tag_mutability = "MUTABLE"

  encryption_configuration {
    encryption_type = "AES256"
  }
  
  image_scanning_configuration {
    scan_on_push = true
  }
}
