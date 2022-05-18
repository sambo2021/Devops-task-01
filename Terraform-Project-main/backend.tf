terraform {
  backend "s3" {
    bucket         = "devops-task-01"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "backend"
  }
}
